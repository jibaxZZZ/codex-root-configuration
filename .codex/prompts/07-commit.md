# Command: commit

Use for clean, conventional commits.

Workflow:
1. Stage: git add -A
2. Inspect: git diff --cached --stat
3. Commit: one-line Conventional Commit (<=72 chars)
4. Push: git push (only if requested)

Rules:
- Types: feat, fix, chore, docs, refactor, test, perf, build, ci
- Use BREAKING CHANGE only when required
- No extra bodies unless user asks
- If no changes, stop and report
