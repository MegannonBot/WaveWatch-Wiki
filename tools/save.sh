#!/bin/bash
# Save the vault: rebuild the index, lint, commit everything and push.
# Run on the Mac:   bash ~/WaveWatch/tools/save.sh "what changed"
# Stops without committing if the lint finds an error.
set -euo pipefail
cd "$(dirname "$0")/.."
export PYTHONDONTWRITEBYTECODE=1
python3 tools/wiki_build.py >/dev/null
python3 tools/wiki_lint.py
git add -A
if git diff --cached --quiet; then
  echo "Nothing to commit."
  exit 0
fi
git commit -q -m "${1:-Vault update}"
git push
echo "Saved and pushed."
