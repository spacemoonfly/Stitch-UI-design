![Stitch UI design Skill](./assets/readme-hero.svg)

# Stitch UI design Skill

A practical Codex skill for web UI work driven by `DESIGN.md`.

This repository builds on the idea behind [awesome-design-md](https://github.com/VoltAgent/awesome-design-md):
- keep design intent in plain markdown,
- let coding agents read that intent directly,
- implement UI with consistent tokens, spacing, typography, and interaction quality.

## What This Skill Adds

Compared with using raw `DESIGN.md` files alone, this skill adds an execution workflow for coding agents:
- when to use it and when to skip it,
- how to map `DESIGN.md` into code tokens,
- how to implement in small, reviewable UI slices,
- how to validate with visual checks plus repo build/test gates.

## Source Credits and Distilled Notes

This skill is distilled from the original concept and collection in:
- [VoltAgent/awesome-design-md](https://github.com/VoltAgent/awesome-design-md)
- [Google Stitch DESIGN.md docs](https://stitch.withgoogle.com/docs/design-md/overview/)

Key takeaways:
1. `DESIGN.md` is the design contract for AI-assisted UI generation.
2. A consistent token system (color, type, spacing, states) is more important than one-off component styling.
3. Agent prompts are more stable when the design rules are explicit and centralized.

## One-Click Install

Quick install with Codex `skill-installer` helper:

```bash
python3 ~/.codex/skills/.system/skill-installer/scripts/install-skill-from-github.py \
  --repo spacemoonfly/Stitch-UI-design \
  --path . \
  --name stitch-ui-design
```

Then restart Codex.

Detailed install options are in [INSTALL.md](./INSTALL.md).

## Usage

Typical prompts:
- "Use Stitch UI design. Read local DESIGN.md and implement this page."
- "Use Stitch UI design with a Stripe-like style for hero and pricing sections."
- "Use Stitch UI design to refactor this admin table and form UI without changing API behavior."

If your project has no `DESIGN.md` yet, fetch one preset:

```bash
~/.codex/skills/stitch-ui-design/scripts/fetch_design_md.sh stripe .
```

## Repository Structure

- `SKILL.md`: core behavior and workflow
- `agents/openai.yaml`: UI metadata for skill chips/list
- `scripts/fetch_design_md.sh`: fetch DESIGN.md presets
- `references/sites.md`: common preset slugs
- `INSTALL.md`: installation methods and troubleshooting

## License

MIT. See [LICENSE](./LICENSE).
