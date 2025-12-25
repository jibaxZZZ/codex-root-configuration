---
name: explore-codebase
description: Explore the codebase to find relevant files, patterns, and examples for a feature or bug.
---

## Intent
Use when you need to understand existing code patterns before making changes.

## Steps
1. Search with rg for entry points, related terms, and existing patterns.
2. Read relevant files and follow import chains.
3. Identify routes, services, configs, tests, and utilities.
4. Summarize findings with file paths and brief purpose.

## Output format
- Relevant files (path + purpose)
- Patterns/conventions found
- Dependencies or external integrations
- Gaps requiring docs
