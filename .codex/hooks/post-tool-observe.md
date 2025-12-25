# Post-tool Observe

After execution:
- Summarize outputs and run `git status` when in a repo.
- If tests/lints ran, always emit:
  STATUS:
  - coverage: <value or n/a>
  - failures: <summary or none>
- Note any anomalies, warnings, or flaky behavior.
