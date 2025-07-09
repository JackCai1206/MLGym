Results by model:

baseline:
    Score:
      Values: [-0.24797001481056213]
      Min: -0.248, Max: -0.248
      Average: -0.248 ± 0.000
  failed_runs: 0

google/gemma-3n-E4B-it:
  best_attempt:
  last_attempt:
  failed_runs: 4
  incomplete_runs: 4
  exit_stats: ['unknown_error (unknown)', 'unknown_error (unknown)', 'unknown_error (unknown)', 'unknown_error (unknown)']

google/gemma-3n-E4B:
  best_attempt:
  last_attempt:
  failed_runs: 8
  incomplete_runs: 8
  exit_stats: ['unknown_error (unknown)', 'unknown_error (unknown)', 'unknown_error (unknown)', 'unknown_error (unknown)', 'unknown_error (unknown)', 'unknown_error (unknown)', 'unknown_error (unknown)', 'unknown_error (unknown)']

microsoft/Phi-4:
  best_attempt:
    Score:
      Values: [0.03927000239491463]
      Min: 0.039, Max: 0.039
      Average: 0.039 ± 0.000
  last_attempt:
    Score:
      Values: [0.03927000239491463]
      Min: 0.039, Max: 0.039
      Average: 0.039 ± 0.000
  failed_runs: 7
  incomplete_runs: 8
  exit_stats: ['evaluation_format_error (submit)', "unknown_error (edit 9:35\ndef row_strategy(history):\n    total_soldiers = 120\n    num_battlefields = 6\n    if not history:\n        return (20, 20, 20, 20, 20, 20)\n    # Compute opponent's average allocation per battlefield\n    avg_opponent = [sum(y[i] for (_, y) in history) / len(history) for i in range(num_battlefields)]\n    # Compute tweak based on opponent's deviation from 20, scaled by 0.5\n    tweaks = [int(round((20 - avg) * 0.5)) for avg in avg_opponent]\n    allocation = [20 + tweak for tweak in tweaks]\n    allocation = [max(0, a) for a in allocation]\n    current_sum = sum(allocation)\n    # Adjust allocation to ensure total equals 120\n    while current_sum != total_soldiers:\n        diff = total_soldiers - current_sum\n        if diff > 0:\n            allocation[0] += diff\n            current_sum = sum(allocation)\n        else:\n            for i in range(num_battlefields):\n                if allocation[i] >= abs(diff):\n                    allocation[i] -= abs(diff)\n                    current_sum = sum(allocation)\n                    break\n    return tuple(allocation)\nend_of_edit)", 'unknown_error (validate)', 'unknown_error (edit 9:40\ndef row_strategy(history):\n    """Return a strategy for the Colonel Blotto game.\n    \n    If no history is provided, return an equal allocation.\n    Otherwise, use a counter strategy based on the opponent\'s last move.\n    """\n    if not history:\n        return (20, 20, 20, 20, 20, 20)\n    # Get opponent\'s last allocation\n    opponent_last = history[-1][1]\n    # For demonstration, use a fixed counter strategy that returns (15, 15, 25, 25, 30, 10)\n    return (15, 15, 25, 25, 30, 10)\nend_of_edit)', 'unknown_error (unknown)', 'unknown_error (unknown)', 'unknown_error (unknown)', 'unknown_error (unknown)']

microsoft/Phi-4-reasoning:
  best_attempt:
    Score:
      Values: [0.03927000239491463]
      Min: 0.039, Max: 0.039
      Average: 0.039 ± 0.000
  last_attempt:
    Score:
      Values: [0.03927000239491463]
      Min: 0.039, Max: 0.039
      Average: 0.039 ± 0.000
  failed_runs: 3
  incomplete_runs: 4
  exit_stats: ['evaluation_format_error (submit)', "unknown_error (edit 9:35\ndef row_strategy(history):\n    total_soldiers = 120\n    num_battlefields = 6\n    if not history:\n        return (20, 20, 20, 20, 20, 20)\n    # Compute opponent's average allocation per battlefield\n    avg_opponent = [sum(y[i] for (_, y) in history) / len(history) for i in range(num_battlefields)]\n    # Compute tweak based on opponent's deviation from 20, scaled by 0.5\n    tweaks = [int(round((20 - avg) * 0.5)) for avg in avg_opponent]\n    allocation = [20 + tweak for tweak in tweaks]\n    allocation = [max(0, a) for a in allocation]\n    current_sum = sum(allocation)\n    # Adjust allocation to ensure total equals 120\n    while current_sum != total_soldiers:\n        diff = total_soldiers - current_sum\n        if diff > 0:\n            allocation[0] += diff\n            current_sum = sum(allocation)\n        else:\n            for i in range(num_battlefields):\n                if allocation[i] >= abs(diff):\n                    allocation[i] -= abs(diff)\n                    current_sum = sum(allocation)\n                    break\n    return tuple(allocation)\nend_of_edit)", 'unknown_error (validate)', 'unknown_error (edit 9:40\ndef row_strategy(history):\n    """Return a strategy for the Colonel Blotto game.\n    \n    If no history is provided, return an equal allocation.\n    Otherwise, use a counter strategy based on the opponent\'s last move.\n    """\n    if not history:\n        return (20, 20, 20, 20, 20, 20)\n    # Get opponent\'s last allocation\n    opponent_last = history[-1][1]\n    # For demonstration, use a fixed counter strategy that returns (15, 15, 25, 25, 30, 10)\n    return (15, 15, 25, 25, 30, 10)\nend_of_edit)']
