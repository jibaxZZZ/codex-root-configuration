# Command: deploy-release

Use for GitOps builds and releases (GHCR + VPS by default).

Format:
- PLAN: env, image tag, target host.
- PREP: Dockerfile/compose + env files (.env.dev/.env.stage/.env.prod).
- EXECUTE: build/push image, update deploy script or image updater, restart service.
- METRICS: Prometheus/Grafana links (or n/a) and Docker status.
- ROLLBACK: previous tag and redeploy steps.
- REFLECT: any anomalies from hooks/monitoring.
