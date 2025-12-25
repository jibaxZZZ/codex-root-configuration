# codex-root-configuration

Global Codex CLI configuration and assets.

## Contents
- `./.codex/AGENTS.md`: primary behavior and workflow rules.
- `./.codex/instructions.md`: entrypoint notes for the configuration.
- `./.codex/hooks/`: pre/post tool guardrails.
- `./.codex/mcp/`: MCP usage standards.
- `./.codex/prompts/`: reusable workflow prompts.
- `./.codex/rules/`: global rules and command templates.
- `./.codex/skills/`: skills used by Codex (including system skills).
- `./.codex/templates/`: CI and script templates.

## Local-only files
Some files are intentionally local and ignored by git:
- `./.codex/config.toml` (local profiles, trust levels, MCP tokens)
- `./.codex/auth.json` (auth state)
- `./.codex/history.jsonl`, `./.codex/sessions/`, `./.codex/log/`, `./.codex/logs/`

## Notes
- Secrets are never committed; use placeholders like `<GITHUB_PERSONAL_ACCESS_TOKEN>`.
