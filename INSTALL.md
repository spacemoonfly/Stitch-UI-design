# Install Stitch UI design Skill

## Prerequisites

- Codex installed locally
- Python 3 available
- Network access to GitHub

## Method 1 (Recommended): One command via skill-installer

```bash
python3 ~/.codex/skills/.system/skill-installer/scripts/install-skill-from-github.py \
  --repo spacemoonfly/Stitch-UI-design \
  --path . \
  --name stitch-ui-design
```

What it does:
- downloads this repository,
- validates `SKILL.md`,
- installs to `~/.codex/skills/stitch-ui-design`.

Then restart Codex.

## Method 2: Manual install

```bash
git clone git@github.com:spacemoonfly/Stitch-UI-design.git /tmp/Stitch-UI-design
rm -rf ~/.codex/skills/stitch-ui-design
mkdir -p ~/.codex/skills/stitch-ui-design
cp -R /tmp/Stitch-UI-design/* ~/.codex/skills/stitch-ui-design/
```

Then restart Codex.

## Verify

Check files exist:

```bash
ls -la ~/.codex/skills/stitch-ui-design
```

You should see at least:
- `SKILL.md`
- `agents/openai.yaml`
- `scripts/fetch_design_md.sh`

## Troubleshooting

1. `Destination already exists`
- Remove old folder first:
```bash
rm -rf ~/.codex/skills/stitch-ui-design
```

2. `SKILL.md not found`
- Ensure install command includes `--path . --name stitch-ui-design`.

3. Skill not visible in Codex
- restart Codex after install.
