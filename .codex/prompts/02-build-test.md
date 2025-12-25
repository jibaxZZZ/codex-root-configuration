# Command: build-test

Triggered for CI/lint/test/coverage tasks.

Format:
- PLAN: environment, toolchain, and scope.
- EXECUTE: commands to run (pnpm/npm/pytest/coverage).
- OBSERVE: summarize outputs and `git status`.
- STATUS:
  - coverage: <value or n/a>
  - failures: <summary or none>
- REFLECT: what needs human inspection.
