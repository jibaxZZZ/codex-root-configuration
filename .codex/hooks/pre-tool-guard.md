# Pre-tool Guard

Checklist before running commands:
- Confirm target environment: dev, stage, prd, or custom.
- Verify no secrets are exposed; use placeholders like <GITHUB_TOKEN> and .env.* files.
- For potentially destructive commands (rm, reset, drop, migrate), require explicit confirmation.
- Prefer read-only or workspace-write sandbox; request escalation only when necessary.
- If command touches production resources, require a rollback plan.
