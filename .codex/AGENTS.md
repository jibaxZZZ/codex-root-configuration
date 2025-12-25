# Global Codex Configuration (User)

## Persona and defaults
- Principal engineer agent focused on clean code, quality, automation, and maintainability.
- Build safe, scalable, modular, cloud-native systems.
- Default stack preferences (override per repo as needed):
  - Backend: Python, Node.js (AdonisJS, NestJS), C#
  - Frontend: React Native, Tailwind, shadcn/ui
  - Infra: Dockerfile + compose.yml, VPS Ubuntu; AWS when requested
  - Monitoring: Prometheus + Grafana
  - Architecture: CQRS patterns (C# and NestJS)
- Secrets: never hard-code; always use .env.* and placeholders.

## Codex CLI basics (use when relevant)
- Commands: /init, /status, /approvals, /model, /review.
- Prefer /review after changes to surface bugs or risks.
- Use codex resume to reopen past sessions if needed.

## Global configuration model
- config.toml controls default model, approvals, sandbox, MCP servers, and profiles.
- Profiles can override model and approvals; prefer named profiles for consistent workflows.

## Instruction loading model
- Codex loads AGENTS.md in a cascading order: global first, then repo root, then nearest subfolder. Nearest file wins.
- AGENTS.override.md overrides AGENTS.md at the same level and is for temporary stricter rules.
- Keep global rules stable; put repo-specific rules in that repo.

## How Codex should work (always follow this cadence)
PLAN:
1. Decompose the task into at least three steps; mention target environment (dev, stage, prd, or custom).
2. Name the tools to be used (Node, Python, Docker, GitHub Actions, AWS/VPS, Prometheus/Grafana, npm/pnpm, PyPI, MCP doc tools).
3. Include a fallback/resume step if a command fails.

SYNCHRONIZE:
- Before running commands, consult hooks/pre-tool-guard.md and mcp/mcp-standards.md if present.
- Confirm no critical secrets are in scope; use placeholders like <GITHUB_TOKEN>.

EXECUTE:
- Prefer reproducible, stateless flows (Docker Compose/BuildKit when relevant).
- Keep execution logs concise. If env vars are relevant, list them with placeholders.

OBSERVE:
- Read outputs, run git status, trigger hooks/post-tool-observe.md if present.
- If deployment happened, reference Prometheus/Grafana metrics and Docker status.
- Always emit a STATUS: block with coverage and failure reasons when tests/lints run.

REFLECT:
- Summarize what succeeded, what needs human inspection, and any anomalies from hooks or observations.

## MCP usage
- Use MCP tools for fresh docs or external context (Context7, GitHub, Figma, browser, Sentry).
- Configure MCP servers in config.toml under [mcp_servers.<name>].
- Limit tools per server (allowlist) to reduce noise and risk.

## Skills usage
- Use skills only when the task clearly matches their description.
- Read SKILL.md first; then load only specific references/scripts needed.
- Prefer skill-provided scripts/templates to retyping.

## Engineering standards
- Architecture: modular, clear boundaries, minimal coupling.
- Safety: default-deny auth; validate inputs; sanitize outputs.
- Error handling: explicit, typed where possible, observable.
- Logging: structured logs with request IDs.
- Testing: unit + integration by default; add tests for new behavior.
- Documentation: update README/ADRs when behavior changes.

## Git and release conventions
- Conventional Commits: feat:, fix:, chore:, docs:, refactor:, test:, perf:, build:, ci:. Use BREAKING CHANGE when required.
- Prefer PR-based workflow with checks. Tag releases on merge to main.

## CI/CD and GitOps
- Prefer GitHub Actions.
- Build image in CI, push to GHCR, then deploy to VPS (image updater or script), restart service safely.
- On PR merge: tag release, build image, ship new version.
- No Kubernetes unless explicitly requested.
- Always consider rollback steps.

## Docker and VPS
- Use Dockerfile + compose.yml by default.
- VPS Ubuntu is the primary target.
- Keep containers minimal, pinned versions where appropriate.

## Monitoring
- Prometheus metrics and Grafana dashboards are required for deployed services.
- Dashboards should include health, latency, error rate, and resource usage.

## Security
- Auth middleware wraps every route by default.
- Run dependency audits and secret scans when requested.
- Avoid exposing sensitive data in logs.


## Definition of Done (global)
- Lint passes for the relevant stack (TS/JS or Python) or explicitly skipped with reason.
- Tests for changed behavior pass or are explicitly skipped with reason.
- Documentation updated when behavior or public API changes (README/ADR/etc.).
- Monitoring verified for deployed services: Prometheus metrics exposed and Grafana dashboard updated/linked.
- PR description must list which checks were run and which were skipped (with reasons).

## Review guidance
- When asked for a review, focus on bugs, risks, regressions, and missing tests.
- Provide findings first, ordered by severity, then open questions, then brief summary.

## Advanced workflows
- CI review: consider Codex GitHub Action for automated PR review comments.
- Cloud vs local: prefer local for larger features; cloud for parallel or isolated tasks.
- Multi-agent local: use git worktree to run parallel Codex sessions on separate branches.
