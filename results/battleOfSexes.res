Results by model:

baseline:
    Score:
      Values: [1.0226699113845825]
      Min: 1.023, Max: 1.023
      Average: 1.023 ± 0.000
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
      Values: [1.2593300342559814, 1.0775500535964966, 1.2462799549102783, 1.442020058631897]
      Min: 1.078, Max: 1.442
      Average: 1.256 ± 0.129
  last_attempt:
    Score:
      Values: [1.075339913368225, 1.0775500535964966, 1.2458099126815796, 1.4418200254440308]
      Min: 1.075, Max: 1.442
      Average: 1.210 ± 0.151
  failed_runs: 4
  incomplete_runs: 5
  exit_stats: ["unknown_error (edit 17:36\n    if not history:\n        return 0\n    # If partner's last move was 0, choose 0.\n    if history[-1][1] == 0:\n        return 0\n    # If partner just switched from 0 to 1, coax by returning 0.\n    if len(history) >= 2 and history[-2][1] == 0 and history[-1][1] == 1:\n        return 0\n    # Compute overall frequency.\n    count0_overall = sum(1 for (_, c) in history if c == 0)\n    count1_overall = len(history) - count0_overall\n    # If overall frequency of 0 is greater than overall frequency of 1, choose 0.\n    if count0_overall > count1_overall:\n        return 0\n    # If overall frequencies are equal, coax by returning 0 with probability 0.5.\n    elif count0_overall == count1_overall:\n        if random.random() < 0.5:\n            return 0\n        else:\n            return 1\n    # Otherwise, return 1.\n    else:\n        return 1\nend_of_edit)", 'submitted', 'submitted', 'submitted', 'unknown_error (unknown)', 'unknown_error (unknown)', 'unknown_error (unknown)', 'unknown_error (unknown)']

microsoft/Phi-4-reasoning:
  best_attempt:
    Score:
      Values: [1.2593300342559814, 1.0775500535964966, 1.2462799549102783, 1.442020058631897]
      Min: 1.078, Max: 1.442
      Average: 1.256 ± 0.129
  last_attempt:
    Score:
      Values: [1.075339913368225, 1.0775500535964966, 1.2458099126815796, 1.4418200254440308]
      Min: 1.075, Max: 1.442
      Average: 1.210 ± 0.151
  failed_runs: 0
  incomplete_runs: 1
  exit_stats: ["unknown_error (edit 17:36\n    if not history:\n        return 0\n    # If partner's last move was 0, choose 0.\n    if history[-1][1] == 0:\n        return 0\n    # If partner just switched from 0 to 1, coax by returning 0.\n    if len(history) >= 2 and history[-2][1] == 0 and history[-1][1] == 1:\n        return 0\n    # Compute overall frequency.\n    count0_overall = sum(1 for (_, c) in history if c == 0)\n    count1_overall = len(history) - count0_overall\n    # If overall frequency of 0 is greater than overall frequency of 1, choose 0.\n    if count0_overall > count1_overall:\n        return 0\n    # If overall frequencies are equal, coax by returning 0 with probability 0.5.\n    elif count0_overall == count1_overall:\n        if random.random() < 0.5:\n            return 0\n        else:\n            return 1\n    # Otherwise, return 1.\n    else:\n        return 1\nend_of_edit)", 'submitted', 'submitted', 'submitted']
