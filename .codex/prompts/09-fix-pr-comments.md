# Command: fix-pr-comments

Use to address GitHub PR review comments.

Workflow:
1. Fetch PR comments and identify files/lines.
2. Scope changes only to requested items.
3. Implement fixes and verify locally when possible.
4. Commit with: fix: address PR review comments
5. Push branch and report what changed.

Rules:
- No unrelated refactors.
- Read files before editing.
- If no PR found, ask for PR number.
