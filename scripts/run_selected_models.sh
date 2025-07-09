#!/bin/bash
# Script to run all experiments in mlgym_bench_v0 for selected models by calling each experiment script
set -euo pipefail

VLLM_PID=""

cleanup() {
    if [[ -n "$VLLM_PID" ]] && kill -0 "$VLLM_PID" 2>/dev/null; then
        echo "Cleaning up: Shutting down VLLM server (PID $VLLM_PID)..."
        kill "$VLLM_PID"
        wait "$VLLM_PID" 2>/dev/null || true
    fi
}
trap cleanup EXIT

    
MODELS=(
    "microsoft/Phi-4"
    "microsoft/Phi-4-reasoning"
    "google/gemma-3n-E4B-it"
    "google/gemma-3n-E4B"
)

run_experiment() {
    local task_config=$1
    local model=$2
    local extra_args=${3:-}
    echo "Running $(basename $task_config .yaml) with model $model..."

    # Don't configure --temp, just use the recommended ones from huggingface
    python run.py \
        --container_type docker \
        --task_config_path $task_config \
        --model "$model" \
        --per_instance_cost_limit 4.00 \
        --agent_config_path $(if [[ "$model" == *"Phi-4-reasoning"* ]]; then echo "configs/agents/reasoning_model.yaml"; else echo "configs/agents/default.yaml"; fi) \
        $extra_args \
        --num_agents 4 \
        --max_steps 50 \
        --suffix parallel_agents \
        --aliases_file ./dockerfiles/aliases.sh
}

for model in "${MODELS[@]}"; do
    echo "Launching VLLM instance"
    vllm serve ${model} --disable-log-requests &
    VLLM_PID=$!
    echo "Waiting for VLLM server with PID $VLLM_PID to be ready for model $model..."
    until (
        response=$(curl -sf -w "\n%{http_code}" http://localhost:8000/v1/models 2>/dev/null) && \
        status_code=$(echo "$response" | tail -n1) && \
        body=$(echo "$response" | head -n-1) && \
        [ "$status_code" = "200" ] && echo "$body" | grep -q "$model"
    ); do
        echo -n "."
        sleep 2
    done
    echo ""

    model="litellm:hosted_vllm/${model}"
    # No GPU experiments
    # run_experiment tasks_remote/3SATTime.yaml "$model" "--gpus_per_agent 0"
    # run_experiment tasks_remote/blotto.yaml "$model" "--gpus_per_agent 0"
    # run_experiment tasks_remote/battleOfSexes.yaml "$model" "--gpus_per_agent 0"
    # run_experiment tasks_remote/prisonersDilemma.yaml "$model" "--gpus_per_agent 0"

    # # Single GPU per agent (4 GPUs)
    run_experiment tasks_remote/imageCaptioningCOCO.yaml "$model" "--gpus 0 1 2 3 --gpus_per_agent 1"
    run_experiment tasks_remote/imageClassificationCifar10.yaml "$model" "--gpus 0 1 2 3 --gpus_per_agent 1"
    run_experiment tasks_remote/imageClassificationFMnist.yaml "$model" "--gpus 0 1 2 3 --gpus_per_agent 1"
    run_experiment tasks_remote/regressionKaggleHousePrice.yaml "$model" "--gpus 0 1 2 3 --gpus_per_agent 1"

    # # Two GPUs per agent (8 GPUs)
    # run_experiment tasks_remote/languageModelingFineWeb.yaml "$model" "--gpus 0 1 2 3 4 5 6 7 --gpus_per_agent 2"
    # run_experiment tasks_remote/naturalLanguageInferenceMNLI.yaml "$model" "--gpus 0 1 2 3 4 5 6 7 --gpus_per_agent 2"
    # run_experiment tasks_remote/rlBreakoutMinAtar.yaml "$model" "--gpus 0 1 2 3 4 5 6 7 --gpus_per_agent 2"
    # run_experiment tasks_remote/rlMetaMaze.yaml "$model" "--gpus 0 1 2 3 4 5 6 7 --gpus_per_agent 2"
    # run_experiment tasks_remote/rlMountainCarContinuous.yaml "$model" "--gpus 0 1 2 3 4 5 6 7 --gpus_per_agent 2"

    echo "Shutting down VLLM server for model $model (PID $VLLM_PID)..."
    kill $VLLM_PID
    wait $VLLM_PID 2>/dev/null
    VLLM_PID=""
    sleep 2
done


echo "All selected experiments for all tasks completed!"
