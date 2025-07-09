# Copyright (c) Meta Platforms, Inc. and affiliates.

set -euo pipefail

# List of models to test
if [ -z "${MODELS+x}" ]; then
MODELS=(
    "google/gemma-3n-E4B-it"
    "google/gemma-3n-E4B"
    "microsoft/Phi-4"
    "microsoft/Phi-4-reasoning"
)
fi

# SAT
python scripts/evaluation/process_results.py \
    --traj_parent_dir trajectories/t-ziyangcai@microsoft.com/litellm-hosted_vllm \
    --traj_pattern 3SATTime__default__t-None__p-None__c-4.00__install-0__parallel_agents \
    --models "${MODELS[@]}" \
    --priority_metric "Time" \
    --metric_direction minimize > results/3SATTime.res

# RL
# python scripts/evaluation/process_results.py \
#     --traj_parent_dir trajectories/t-ziyangcai@microsoft.com/litellm-hosted_vllm \
#     --traj_pattern rlMountainCarContinuous__default__t-None__p-None__c-4.00__install-0__parallel_agents \
#     --models "${MODELS[@]}" \
#     --priority_metric "Reward Mean" \
#     --metric_direction maximize > results/rlMountainCarContinuous.res

# python scripts/evaluation/process_results.py \
#     --traj_parent_dir trajectories/t-ziyangcai@microsoft.com/litellm-hosted_vllm \
#     --traj_pattern rlMetaMaze__default__t-None__p-None__c-4.00__install-0__parallel_agents \
#     --models "${MODELS[@]}" \
#     --priority_metric "Reward Mean" \
#     --metric_direction maximize > results/rlMetaMaze.res

# python scripts/evaluation/process_results.py \
#     --traj_parent_dir trajectories/t-ziyangcai@microsoft.com/litellm-hosted_vllm \
#     --traj_pattern rlBreakoutMinAtar__default__t-None__p-None__c-4.00__install-0__parallel_agents \
#     --models "${MODELS[@]}" \
#     --priority_metric "Reward Mean" \
#     --metric_direction maximize > results/rlBreakoutMinAtar.res

# Game Theory
python scripts/evaluation/process_results.py \
    --traj_parent_dir trajectories/t-ziyangcai@microsoft.com/litellm-hosted_vllm \
    --traj_pattern blotto__default__t-None__p-None__c-4.00__install-0__parallel_agents \
    --models "${MODELS[@]}" \
    --priority_metric "Score" \
    --metric_direction maximize > results/blotto.res

python scripts/evaluation/process_results.py \
    --traj_parent_dir trajectories/t-ziyangcai@microsoft.com/litellm-hosted_vllm \
    --traj_pattern prisonersDilemma__default__t-None__p-None__c-4.00__install-0__parallel_agents \
    --models "${MODELS[@]}" \
    --priority_metric "Score" \
    --metric_direction maximize > results/prisonersDilemma.res

python scripts/evaluation/process_results.py \
    --traj_parent_dir trajectories/t-ziyangcai@microsoft.com/litellm-hosted_vllm \
    --traj_pattern battleOfSexes__default__t-None__p-None__c-4.00__install-0__parallel_agents \
    --models "${MODELS[@]}" \
    --priority_metric "Score" \
    --metric_direction maximize > results/battleOfSexes.res

# # Data Science
# python scripts/evaluation/process_results.py \
#     --traj_parent_dir trajectories/t-ziyangcai@microsoft.com/litellm-hosted_vllm \
#     --traj_pattern regressionKaggleHousePrice__default__t-None__p-None__c-4.00__install-0__parallel_agents \
#     --models "${MODELS[@]}" \
#     --priority_metric "r2" \
#     --metric_direction maximize > results/regressionKaggleHousePrice.res

# # NLP
# python scripts/evaluation/process_results.py \
#     --traj_parent_dir trajectories/t-ziyangcai@microsoft.com/litellm-hosted_vllm \
#     --traj_pattern languageModelingFineWeb__default__t-None__p-None__c-4.00__install-0__parallel_agents \
#     --models "${MODELS[@]}" \
#     --priority_metric "val_loss" \
#     --metric_direction minimize > results/languageModelingFineWeb.res

# python scripts/evaluation/process_results.py \
#     --traj_parent_dir trajectories/t-ziyangcai@microsoft.com/litellm-hosted_vllm \
#     --traj_pattern naturalLanguageInferenceMNLI__default__t-None__p-None__c-4.00__install-0__parallel_agents \
#     --models "${MODELS[@]}" \
#     --priority_metric "validation_loss" \
#     --metric_direction minimize > results/naturalLanguageInferenceMNLI.res

# # Vision
# python scripts/evaluation/process_results.py \
#     --traj_parent_dir trajectories/t-ziyangcai@microsoft.com/litellm-hosted_vllm \
#     --traj_pattern imageClassificationFMnist__default__t-None__p-None__c-4.00__install-0__parallel_agents \
#     --models "${MODELS[@]}" \
#     --priority_metric "accuracy" \
#     --metric_direction maximize > results/imageClassificationFMnist.res

# python scripts/evaluation/process_results.py \
#     --traj_parent_dir trajectories/t-ziyangcai@microsoft.com/litellm-hosted_vllm \
#     --traj_pattern imageClassificationCifar10__default__t-None__p-None__c-4.00__install-0__parallel_agents \
#     --models "${MODELS[@]}" \
#     --priority_metric "accuracy" \
#     --metric_direction maximize > results/imageClassificationCifar10.res

# python scripts/evaluation/process_results.py \
#     --traj_parent_dir trajectories/t-ziyangcai@microsoft.com/litellm-hosted_vllm \
#     --traj_pattern imageCaptioningCOCO__default__t-None__p-None__c-4.00__install-0__parallel_agents \
#     --models "${MODELS[@]}" \
#     --priority_metric "val_loss" \
#     --metric_direction minimize > results/imageCaptioningCOCO.res
