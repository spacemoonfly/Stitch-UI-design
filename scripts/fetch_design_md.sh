#!/usr/bin/env bash
set -euo pipefail

# Fetch DESIGN.md from VoltAgent/awesome-design-md by slug.
# Usage:
#   fetch_design_md.sh <slug> [output]
# Examples:
#   fetch_design_md.sh stripe .
#   fetch_design_md.sh figma /tmp/FIGMA-DESIGN.md

SLUG="${1:-}"
OUTPUT="${2:-DESIGN.md}"

if [[ -z "$SLUG" ]]; then
  echo "Usage: $0 <slug> [output]" >&2
  exit 1
fi

if [[ "$OUTPUT" == "." ]]; then
  OUTPUT="./DESIGN.md"
fi

URL="https://raw.githubusercontent.com/VoltAgent/awesome-design-md/main/design-md/${SLUG}/DESIGN.md"

TMP="$(mktemp)"
trap 'rm -f "$TMP"' EXIT

STATUS="$(curl -sSL -w '%{http_code}' -o "$TMP" "$URL")"
if [[ "$STATUS" != "200" ]]; then
  echo "Failed to fetch DESIGN.md for slug '$SLUG' (HTTP $STATUS)" >&2
  echo "Try another slug from references/sites.md" >&2
  exit 1
fi

mkdir -p "$(dirname "$OUTPUT")"
cp "$TMP" "$OUTPUT"

echo "Saved: $OUTPUT"
echo "Source: $URL"
