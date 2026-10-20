#!/bin/bash
# Install (or reinstall) the WaveWatch vault autosave on this Mac.
#   Install:    bash ~/WaveWatch/tools/install-autosave.sh
#   Remove:     bash ~/WaveWatch/tools/install-autosave.sh remove
set -euo pipefail
LABEL="me.megannon.wavewatch.autosave"
VAULT="$(cd "$(dirname "$0")/.." && pwd)"
PLIST="$HOME/Library/LaunchAgents/$LABEL.plist"
DOMAIN="gui/$(id -u)"

launchctl bootout "$DOMAIN/$LABEL" >/dev/null 2>&1 || true
if [ "${1:-}" = "remove" ]; then
  rm -f "$PLIST"
  echo "Autosave removed."
  exit 0
fi

mkdir -p "$HOME/Library/LaunchAgents" "$VAULT/.autosave"
chmod +x "$VAULT/tools/autosave.sh"
cat > "$PLIST" <<PLIST
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
  <key>Label</key><string>$LABEL</string>
  <key>ProgramArguments</key>
  <array><string>/bin/zsh</string><string>$VAULT/tools/autosave.sh</string></array>
  <key>EnvironmentVariables</key>
  <dict><key>VAULT</key><string>$VAULT</string></dict>
  <key>StartInterval</key><integer>60</integer>
  <key>RunAtLoad</key><true/>
  <key>StandardOutPath</key><string>$VAULT/.autosave/autosave.log</string>
  <key>StandardErrorPath</key><string>$VAULT/.autosave/autosave.err</string>
</dict>
</plist>
PLIST
launchctl bootstrap "$DOMAIN" "$PLIST"
sleep 3
echo "Autosave installed. It commits and pushes changes in $VAULT every minute."
echo "Last log lines:"
tail -n 5 "$VAULT/.autosave/autosave.log" 2>/dev/null || echo "(no log yet; check again in a minute)"
