#!/usr/bin/env bash
# Prepares the Mac Mini for the WaveWatch M0 to M2 build. Run once, on the laptop,
# after first-time setup (both repositories exist and the vault is pushed):
#   bash ~/Wavewatch/outputs/technology/2026-10-20_firebase-m0-m2/start-on-mini.sh
# It does not start Claude Code: Franco opens the session himself in Claude Desktop
# (environment dropdown, SSH connection "Mini", folder ~/wavewatch/WaveWatch-App).
set -euo pipefail

MINI="megannonmac@100.104.120.104"
HERE="$(cd "$(dirname "$0")" && pwd)"
PROMPT="$HERE/2026-10-20_technology_mini-build-prompt.md"
SETTINGS="$HERE/mini-settings.local.json"
KEY="$HOME/.ssh/id_ed25519_wavewatch"
REMOTE="git@github-wavewatch:MegannonBot/WaveWatch-App.git"

echo "1/5 Making sure WaveWatch-App has a main branch"
if [ -z "$(git ls-remote "$REMOTE" 2>/dev/null)" ]; then
  TMP="$(mktemp -d)"
  cd "$TMP"
  git init -q -b main
  printf "# WaveWatch App\n\nWeb app for WaveWatch. Build plan and specs live in WaveWatch-Wiki.\n" > README.md
  printf "node_modules/\ndist/\n.env\n*.log\n.firebase/\n" > .gitignore
  git add -A
  git commit -q -m "Start WaveWatch App"
  git remote add origin "$REMOTE"
  git push -q -u origin main
  cd - >/dev/null
  echo "    main created"
else
  echo "    main already exists; left as it is"
fi

echo "2/5 Giving the Mini the WaveWatch GitHub key"
ssh "$MINI" 'mkdir -p ~/.ssh && chmod 700 ~/.ssh'
scp -q "$KEY" "$KEY.pub" "$MINI:.ssh/"
ssh "$MINI" 'chmod 600 ~/.ssh/id_ed25519_wavewatch
grep -q "^Host github-wavewatch" ~/.ssh/config 2>/dev/null || printf "\nHost github-wavewatch\n  HostName github.com\n  User git\n  IdentityFile ~/.ssh/id_ed25519_wavewatch\n  IdentitiesOnly yes\n" >> ~/.ssh/config
ssh -o StrictHostKeyChecking=accept-new -T github-wavewatch 2>&1 | grep -q MegannonBot'
echo "    The Mini reaches GitHub as MegannonBot"

echo "3/5 Cloning the app and the vault on the Mini"
ssh "$MINI" 'mkdir -p ~/wavewatch/logs && cd ~/wavewatch
if [ -d WaveWatch-App ]; then git -C WaveWatch-App fetch -q; else git clone -q git@github-wavewatch:MegannonBot/WaveWatch-App.git; fi
if [ -d WaveWatch-Wiki ]; then git -C WaveWatch-Wiki pull -q --ff-only; else git clone -q git@github-wavewatch:MegannonBot/WaveWatch-Wiki.git; fi
test -f WaveWatch-Wiki/outputs/product/2026-10-20_firebase-build-plan/2026-10-20_product_firebase-build-plan.md'
echo "    Both cloned; the build plan is there"

echo "4/5 Checking tools on the Mini"
ssh "$MINI" 'export PATH=/opt/homebrew/bin:$PATH; echo "    node: $(node --version 2>&1)"; echo "    npm: $(npm --version 2>&1)"; echo "    tmux: $(tmux -V 2>&1)"; (/usr/libexec/java_home -v 21+ >/dev/null 2>&1 && echo "    java: $(java -version 2>&1 | head -1)") || echo "    java: MISSING (the Firebase emulator needs Java 21 or newer)"'

echo "5/5 Copying the prompt and the allow-list"
scp -q "$PROMPT" "$MINI:wavewatch/mini-build-prompt.md"
ssh "$MINI" 'mkdir -p ~/wavewatch/WaveWatch-App/.claude'
scp -q "$SETTINGS" "$MINI:wavewatch/WaveWatch-App/.claude/settings.local.json"
ssh "$MINI" 'cd ~/wavewatch/WaveWatch-App && (grep -qx ".claude/settings.local.json" .git/info/exclude || echo ".claude/settings.local.json" >> .git/info/exclude)'

echo
echo "Mini ready. Next, in Claude Desktop: environment dropdown, SSH 'Mini', folder ~/wavewatch/WaveWatch-App,"
echo "then paste the prompt from ~/Wavewatch/outputs/technology/2026-10-20_firebase-m0-m2/2026-10-20_technology_mini-build-prompt.md"
