# WARP.md

This file provides guidance to WARP (warp.dev) when working with code in this repository.

## Repository snapshot

- Detected files: `README.md`
- No build system, package manager, or test/lint configuration files were found.

## Commands

No project-specific commands are defined yet. Once the project scaffolding is added (e.g., package manager files, Makefile, or language-specific configs), update this section with:
- Build
- Lint/format
- Test (including how to run a single test)

## Architecture overview

Insufficient code present to infer a high-level architecture. When application code is added, summarize:
- Primary runtime/framework (e.g., Node/Next.js, Python/FastAPI, Go, etc.)
- App entry points and how the app is started locally
- Directory responsibilities and cross-cutting concerns (e.g., API layer, UI components, domain modules)

## When the codebase evolves

When new files are introduced, prefer pulling exact details from the repo rather than using generic assumptions:
- If `package.json` exists, document `scripts` for build/lint/test and how to run a single test (e.g., `npm test -- <pattern>` for Jest or `vitest --run -t <name>` for Vitest).
- If a Makefile exists, document the targets used in day-to-day development.
- If language-specific configs exist (e.g., `pyproject.toml`, `go.mod`, `Cargo.toml`), include their standard build/test flows.
- If CI config appears (e.g., `.github/workflows/*`), note the commands CI runs so they can be reproduced locally.

## Existing docs and rules

- `README.md` exists but contains no actionable setup or run instructions. If expanded, include the important parts here.
- No CLAUDE, Cursor, or Copilot rules files detected. If added, summarize their key instructions here.
