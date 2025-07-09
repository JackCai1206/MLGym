Results by model:

baseline:
    Time:
      Values: [16.158]
      Min: 16.158, Max: 16.158
      Average: 16.158 ± 0.000
    Correct:
      Values: [24000.0]
      Min: 24000.000, Max: 24000.000
      Average: 24000.000 ± 0.000
    Incorrect:
      Values: [0.0]
      Min: 0.000, Max: 0.000
      Average: 0.000 ± 0.000
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
    Time:
      Values: [16.769]
      Min: 16.769, Max: 16.769
      Average: 16.769 ± 0.000
    Correct:
      Values: [23997]
      Min: 23997.000, Max: 23997.000
      Average: 23997.000 ± 0.000
    Incorrect:
      Values: [0]
      Min: 0.000, Max: 0.000
      Average: 0.000 ± 0.000
    Decisions:
      Values: [73867]
      Min: 73867.000, Max: 73867.000
      Average: 73867.000 ± 0.000
  last_attempt:
    Time:
      Values: [16.769]
      Min: 16.769, Max: 16.769
      Average: 16.769 ± 0.000
    Correct:
      Values: [23997]
      Min: 23997.000, Max: 23997.000
      Average: 23997.000 ± 0.000
    Incorrect:
      Values: [0]
      Min: 0.000, Max: 0.000
      Average: 0.000 ± 0.000
    Decisions:
      Values: [73867]
      Min: 73867.000, Max: 73867.000
      Average: 73867.000 ± 0.000
  failed_runs: 7
  incomplete_runs: 7
  exit_stats: ['unknown_error (edit 1:3\n\nend_of_edit)', 'unknown_error (edit 47:49\n        recent_history = assignment_history[-last_n:] if isinstance(assignment_history, (list, tuple)) else [assignment_history]\n        if var in ([assignment[0] for assignment in recent_history] if isinstance(assignment_history, (list, tuple)) else recent_history):\n            score -= recency_penalty\nend_of_edit)', 'unknown_error (edit 11:16\n    if isinstance(level, list):\n        while isinstance(level, list) and level:\n    level = level[0]\n    if isinstance(level, list):\n        level = 0\n    TEMPERATURE = 1.0 / (level + 1)  # Decay factor with recursion level.\nend_of_edit)', 'submitted', 'unknown_error (unknown)', 'unknown_error (unknown)', 'unknown_error (unknown)', 'unknown_error (unknown)']

microsoft/Phi-4-reasoning:
  best_attempt:
    Time:
      Values: [16.769]
      Min: 16.769, Max: 16.769
      Average: 16.769 ± 0.000
    Correct:
      Values: [23997]
      Min: 23997.000, Max: 23997.000
      Average: 23997.000 ± 0.000
    Incorrect:
      Values: [0]
      Min: 0.000, Max: 0.000
      Average: 0.000 ± 0.000
    Decisions:
      Values: [73867]
      Min: 73867.000, Max: 73867.000
      Average: 73867.000 ± 0.000
  last_attempt:
    Time:
      Values: [16.769]
      Min: 16.769, Max: 16.769
      Average: 16.769 ± 0.000
    Correct:
      Values: [23997]
      Min: 23997.000, Max: 23997.000
      Average: 23997.000 ± 0.000
    Incorrect:
      Values: [0]
      Min: 0.000, Max: 0.000
      Average: 0.000 ± 0.000
    Decisions:
      Values: [73867]
      Min: 73867.000, Max: 73867.000
      Average: 73867.000 ± 0.000
  failed_runs: 3
  incomplete_runs: 3
  exit_stats: ['unknown_error (edit 1:3\n\nend_of_edit)', 'unknown_error (edit 47:49\n        recent_history = assignment_history[-last_n:] if isinstance(assignment_history, (list, tuple)) else [assignment_history]\n        if var in ([assignment[0] for assignment in recent_history] if isinstance(assignment_history, (list, tuple)) else recent_history):\n            score -= recency_penalty\nend_of_edit)', 'unknown_error (edit 11:16\n    if isinstance(level, list):\n        while isinstance(level, list) and level:\n    level = level[0]\n    if isinstance(level, list):\n        level = 0\n    TEMPERATURE = 1.0 / (level + 1)  # Decay factor with recursion level.\nend_of_edit)', 'submitted']
