# Command: watch-ci

Use to monitor CI and fix failures.

Workflow:
1. Identify latest run for current branch.
2. Watch until completion.
3. On failure: inspect logs, fix, commit, push, retry (max 3).
4. On success: report checks green.

Rules:
- Only fix CI-related failures.
- Keep commits scoped to the CI error.
