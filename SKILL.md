---
name: stitch-ui-design
description: Use when doing web UI design/implementation with Stitch-style DESIGN.md guidance, especially for landing pages, dashboards, admin UIs, and UI refactors where visual consistency, spacing, typography, and interaction quality matter.
---

# Stitch UI design

## Overview

Use this skill when a task changes how a web UI looks or feels and we want a structured DESIGN.md-driven workflow.
It is optimized for practical implementation work in repos like `519197web`: read design intent, map tokens, implement incrementally, and verify visually plus build/test gates.

## When To Use

Use this skill for:
- New page or section UI implementation.
- UI refactor that changes layout, spacing, typography, colors, or motion.
- Style unification across WEB and ADMIN surfaces.
- Converting a reference style into production-ready React/CSS code.

Skip this skill for:
- Pure backend/API/database tasks.
- Non-visual automation tasks.

## Workflow

1. Pick a design source.
- Prefer project-local `DESIGN.md` at repo root.
- If missing, fetch one from `VoltAgent/awesome-design-md` into the workspace root as `DESIGN.md`.

2. Extract implementation tokens from `DESIGN.md`.
- Color tokens: primary/background/text/border/status colors.
- Typography: font families, weights, scale, line heights.
- Spacing/radius/shadow/motion rhythm.
- Component states: default/hover/active/disabled/focus.

3. Translate tokens to code structure.
- Centralize into CSS variables or theme tokens first.
- Reuse existing project patterns/components where available.
- Keep visual language consistent; avoid mixed styles on the same page.

4. Implement incrementally.
- Ship small, reviewable diffs by surface (header/card/form/list/modal).
- Preserve behavior; avoid mixing large logic rewrites with pure style work.

5. Verify before finishing.
- UI checks: desktop + mobile viewport, focus states, contrast, overflow.
- Repo checks: run required project gates (`pnpm test`, `pnpm run build`).
- If touching high-risk UI links defined by project docs, run extra QA scripts required by the repo contract.

## 519197web Defaults

When used in `519197web`:
- Follow repo contract docs (`README.md` + `AGENTS.md`) for delivery sequence and verification requirements.
- Keep existing business interaction and data flow unchanged unless user explicitly asks.
- Prefer visual improvements that are obvious, testable, and low-regression.

## Quick Commands

Fetch a design preset into current project root:

```bash
~/.codex/skills/stitch-ui-design/scripts/fetch_design_md.sh stripe .
```

Fetch another style into a custom file:

```bash
~/.codex/skills/stitch-ui-design/scripts/fetch_design_md.sh notion /path/to/repo/NOTION-DESIGN.md
```

See common style slugs:
- `~/.codex/skills/stitch-ui-design/references/sites.md`

## Prompt Patterns

- "Use Stitch UI design. Apply `stripe` DESIGN.md style to the marketing hero and pricing section, keep current business logic unchanged."
- "Use Stitch UI design to refactor this admin list page with better spacing and typography, while preserving existing API behavior."
- "Read local DESIGN.md and implement a consistent card/table/button style system for this repo."
