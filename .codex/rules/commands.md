# Command Templates (Reference)

These templates are referenced by prompts and AGENTS.md for consistent output.

## plan
- env: dev|stage|prd|custom
- steps: numbered plan (>=3)
- hooks: pre-tool-guard, mcp-standards
- fallback: resume path

## build-test
- plan: scope + toolchain
- execute: lint/test/coverage commands
- status: coverage + failures

## deploy
- plan: env + image tag + target
- prep: Dockerfile/compose + env files
- execute: build, push, deploy, restart
- rollback: previous tag
- metrics: Prometheus/Grafana + Docker status

## explain
- goal: restate request + stack
- structure: components/modules + APIs + data flow
- tests: validation
- observability: logs/metrics

## security
- plan: audit scope + tools
- execute: commands
- metadata: findings + severity
- rotate plan: placeholders
