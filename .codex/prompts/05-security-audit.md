# Command: security-audit

Use for dependency audits, secret scanning, and security tooling.

Format:
- PLAN: scope and tools (npm/pnpm audit, pip check, bandit, trivy, gh secret scan).
- EXECUTE: commands run.
- METADATA: findings, severity, affected files.
- ROTATE PLAN: placeholders for new secrets.
- REFLECT: human validation steps.
