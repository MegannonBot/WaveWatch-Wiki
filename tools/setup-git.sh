#!/bin/bash
# One-time git and GitHub setup for the WaveWatch vault.
# Run on the Mac, in Terminal:   bash ~/WaveWatch/tools/setup-git.sh
# Safe to run again: it reuses an existing key, config block, repository and remote.
set -euo pipefail

ACCOUNT="MegannonBot"
REPO="WaveWatch-Wiki"
EMAIL="jfmegannon@gmail.com"
ALIAS="github-wavewatch"
KEY="$HOME/.ssh/id_ed25519_wavewatch"

VAULT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$VAULT"
echo "Vault: $VAULT"
echo

# 1. A separate SSH key for this GitHub account (no passphrase, like a deploy key).
mkdir -p "$HOME/.ssh"
chmod 700 "$HOME/.ssh"
if [ -f "$KEY" ]; then
  echo "1/5 Key already exists, reusing: $KEY"
else
  ssh-keygen -t ed25519 -C "$EMAIL" -f "$KEY" -N "" >/dev/null
  echo "1/5 Key created: $KEY"
fi

# 2. A host alias so this vault uses that key and no other.
touch "$HOME/.ssh/config"
chmod 600 "$HOME/.ssh/config"
if grep -q "^Host $ALIAS\$" "$HOME/.ssh/config"; then
  echo "2/5 SSH alias already present: $ALIAS"
else
  printf '\nHost %s\n  HostName github.com\n  User git\n  IdentityFile %s\n  IdentitiesOnly yes\n' "$ALIAS" "$KEY" >> "$HOME/.ssh/config"
  echo "2/5 SSH alias added: $ALIAS"
fi

# 3. The two browser steps only Franco can do.
echo
echo "3/5 Do these two things in your browser, signed in to GitHub as $ACCOUNT:"
echo
echo "  a) Open https://github.com/settings/ssh/new"
echo "     Title: Franco laptop WaveWatch"
echo "     Key: paste the line below (it is already on your clipboard if pbcopy worked)"
echo
cat "$KEY.pub"
if command -v pbcopy >/dev/null 2>&1; then pbcopy < "$KEY.pub"; fi
echo
echo "  b) Open https://github.com/new"
echo "     Repository name: $REPO"
echo "     Private. Do NOT add a README, .gitignore or licence."
echo
read -r -p "Press Enter when both are done... "

# 4. Check that GitHub sees the right account.
echo
WHO="$(ssh -T -o StrictHostKeyChecking=accept-new "git@$ALIAS" 2>&1 || true)"
echo "4/5 GitHub says: $WHO"
case "$WHO" in
  *"Hi $ACCOUNT"*) ;;
  *)
    echo
    echo "STOP: GitHub did not greet $ACCOUNT. Nothing was committed or pushed."
    echo "Check that the key was added while signed in as $ACCOUNT, then run this script again."
    exit 1
    ;;
esac

# 5. Initialise, commit, push.
if [ ! -d .git ]; then git init -b main >/dev/null; fi
git config user.name "Franco Megannon"
git config user.email "$EMAIL"
git add -A
if git diff --cached --quiet; then
  echo "5/5 Nothing new to commit."
else
  git commit -q -m "Found the WaveWatch vault"
  echo "5/5 Committed."
fi
if ! git remote get-url origin >/dev/null 2>&1; then
  git remote add origin "git@$ALIAS:$ACCOUNT/$REPO.git"
fi
git push -u origin main

echo
echo "Done. The vault is on GitHub at https://github.com/$ACCOUNT/$REPO"
echo "Tell Claude it worked so the state page and log are updated."
