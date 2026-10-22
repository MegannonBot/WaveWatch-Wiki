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
  echo "Nothing new to commit; sending anything already committed."
else
  git commit -q -m "${1:-Vault update}"
fi
# Pull first so a push from the Mini never rejects this one; same network limits as autosave.
export GIT_SSH_COMMAND="ssh -o BatchMode=yes -o ConnectTimeout=15 -o ServerAliveInterval=15 -o ServerAliveCountMax=2"
perl -e 'alarm shift @ARGV; exec @ARGV or exit 127' 90 git pull --rebase -q origin main
perl -e 'alarm shift @ARGV; exec @ARGV or exit 127' 90 git push -q origin main
echo "Saved and pushed."
