# AGENTS.md — Project Rules for Copilot Coding Agent

## Build & Test
- Python: `uv run pytest -q` (Fallback: `pytest -q`)
- Lint/Format: `ruff check . && ruff format .`
- Node UI: `pnpm i && pnpm build` (Fallback: `npm ci && npm run build`)

## Policies
- Tests-first bei Änderungen an #acestep/gui.py und #acestep/*
- Keine Secrets in Logs, keine Änderungen an LICENSE/NOTICE
- PR-Template verwenden; Commit-Messages im Conventional-Commits-Stil

## Environments
- Minimal: Python 3.11+, Torch/torchaudio kompatibel
- OS: Windows 10+ & Linux; große Dateien nicht ins Repo (Artefakte → /data ignored)
