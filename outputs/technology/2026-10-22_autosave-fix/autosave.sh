#!/bin/zsh
# WaveWatch vault autosave: commit and push whatever changed, once a minute.
# Installed as LaunchAgent me.megannon.wavewatch.autosave by tools/install-autosave.sh.
# Modelled on Certech's laptop autosave, with one writer instead of two.
#
# Rules it keeps:
#   - never acts during a merge or rebase;
#   - clears a git index.lock only if it is stale (older than 5 minutes, no git running);
#   - fetches and rebases before pushing; never merges, never force-pushes;
#   - a failure raises ONE macOS notification per incident and is written to the log,
#     so silence always means healthy;
#   - network steps cannot hang: ssh gives up after 15 s of silence and never asks for a
#     passphrase, and each network step is cut off after 90 s (added 2026-10-22 after a
#     fetch hung for 4.5 hours and blocked every later run);
#   - if GitHub cannot be reached for 60 minutes, that is an alert, not silence.

export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/homebrew/bin"
VAULT="${VAULT:-$HOME/WaveWatch}"
BRANCH="${BRANCH:-main}"
STATE_DIR="$VAULT/.autosave"
ALERT_ACTIVE="$STATE_DIR/alert.active"
mkdir -p "$STATE_DIR" 2>/dev/null
now() { date '+%F %T'; }

# Network safety (2026-10-22). BatchMode stops ssh waiting for a passphrase it can never get.
export GIT_SSH_COMMAND="ssh -o BatchMode=yes -o ConnectTimeout=15 -o ServerAliveInterval=15 -o ServerAliveCountMax=2"
# Run a command with a hard time limit (perl ships with macOS; no coreutils needed).
limit() { local s="$1"; shift; perl -e 'alarm shift @ARGV; exec @ARGV or exit 127' "$s" "$@"; }
OFFLINE_SINCE="$STATE_DIR/offline.since"

raise_alert() {
  # $1 = reason tag, $2 = plain sentence
  echo "$(now) ALERT reason=$1 plain=$2" >> "$STATE_DIR/alerts.log"
  if [ -f "$ALERT_ACTIVE" ]; then echo "$(now) alert already open, not repeating"; return 0; fi
  echo "$(now) reason=$1" > "$ALERT_ACTIVE"
  osascript -e "display notification \"$2\" with title \"WaveWatch autosave\" subtitle \"$1\"" >/dev/null 2>&1 || true
}
clear_alert() { [ -f "$ALERT_ACTIVE" ] && { echo "$(now) healthy again, clearing alert"; rm -f "$ALERT_ACTIVE"; }; return 0; }

cd "$VAULT" || { echo "$(now) ERROR cannot cd $VAULT"; exit 1; }
GITDIR="$(git rev-parse --git-dir 2>/dev/null)"
[ -z "$GITDIR" ] && { echo "$(now) not a git repository, nothing to do"; exit 0; }

if [ -e "$GITDIR/MERGE_HEAD" ] || [ -e "$GITDIR/rebase-merge" ] || [ -e "$GITDIR/rebase-apply" ] || [ -e "$GITDIR/CHERRY_PICK_HEAD" ]; then
  echo "$(now) merge or rebase in progress, standing down"; exit 0
fi

if [ -e "$GITDIR/index.lock" ]; then
  if [ -n "$(find "$GITDIR/index.lock" -mmin -5 2>/dev/null)" ] || pgrep -x git >/dev/null 2>&1; then
    echo "$(now) index.lock is fresh or git is running, retry next cycle"; exit 0
  fi
  echo "$(now) clearing stale index.lock"; rm -f "$GITDIR/index.lock"
fi

# 1. Commit.
if [ -n "$(git status --porcelain)" ]; then
  TS="$(date '+%F-%H%M')"
  git add -A
  if ! git commit -q -m "autosave $TS"; then
    echo "$(now) commit FAILED"
    raise_alert "commit_failed" "Your WaveWatch changes are on disk but could not be committed."
    exit 1
  fi
  echo "$(now) committed (autosave $TS)"
fi

# 2. Fetch. A short outage is normal for a laptop; an hour of it is an alert.
if ! FETCH_ERR="$(limit 90 git fetch -q origin "$BRANCH" 2>&1)"; then
  [ -f "$OFFLINE_SINCE" ] || date +%s > "$OFFLINE_SINCE"
  echo "$(now) fetch failed, retry next cycle: $(echo "$FETCH_ERR" | tr '\n' ' ' | cut -c1-300)"
  if [ $(( $(date +%s) - $(cat "$OFFLINE_SINCE") )) -ge 3600 ]; then
    raise_alert "github_unreachable" "WaveWatch vault has not reached GitHub for an hour. Changes are safe on this Mac. See .autosave/autosave.log."
  fi
  exit 0
fi
rm -f "$OFFLINE_SINCE"

# 3. Rebase if GitHub moved.
if [ -n "$(git rev-list HEAD..origin/$BRANCH 2>/dev/null)" ]; then
  if ! git rebase -q "origin/$BRANCH" 2>/dev/null; then
    git rebase --abort 2>/dev/null
    echo "$(now) rebase FAILED"
    raise_alert "rebase_conflict" "WaveWatch vault: your copy and GitHub changed the same file. Work is safe locally; it needs a hand."
    exit 1
  fi
fi

# 4. Push if ahead.
if [ -n "$(git rev-list origin/$BRANCH..HEAD 2>/dev/null)" ]; then
  if ! PUSH_ERR="$(limit 90 git push -q origin "$BRANCH" 2>&1)"; then
    echo "$(now) push FAILED: $(echo "$PUSH_ERR" | tr '\n' ' ' | cut -c1-300)"
    raise_alert "push_failed" "WaveWatch changes are committed but could not reach GitHub. It will keep trying."
    exit 1
  fi
  echo "$(now) pushed $(git rev-parse --short HEAD)"
fi

clear_alert
exit 0
