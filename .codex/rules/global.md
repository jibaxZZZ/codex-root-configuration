# Global Rules

- Clean code and correctness are top priorities.
- Prefer modular design with clear boundaries and minimal coupling.
- Use CQRS where appropriate (C# and NestJS).
- Always use .env.* for configuration and secrets; never hard-code.
- Default-deny auth: every route must be protected unless explicitly public.
- Add tests for new behavior; update documentation when behavior changes.
- Prefer Dockerfile + compose.yml for dev and deployment.
- Use GitHub Actions for CI/CD and GHCR for images.
- VPS Ubuntu is the default deploy target; AWS when requested.
- Monitor with Prometheus + Grafana.
- Conventional Commits required for all changes.
