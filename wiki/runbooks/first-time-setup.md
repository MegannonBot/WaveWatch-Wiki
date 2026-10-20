---
type: runbook
title: First-time setup of the vault, git and GitHub
summary: One-off steps Franco runs on the laptop to install the Claude Code configuration, create the repositories and put the vault under git.
status: active
last_updated: 2026-10-20
---

# First-time setup of the vault, git and GitHub

## When to use

Once, before the first Mini build. Run by Franco in Terminal on the laptop. A Cowork session does not run these steps.

## Steps

0. **Install the Claude Code configuration.** `.claude/` cannot be written from Cowork, so it is delivered as `_claude-setup/`:

```
cd ~/Wavewatch
mv _claude-setup .claude
```

1. **Create two private repositories on GitHub**, signed in as `MegannonBot`, with no README: `WaveWatch-Wiki` and `WaveWatch-App`.
2. **Run the setup script.** It creates a separate key and host alias `github-wavewatch`, walks you through adding the key to GitHub, then commits and pushes the vault:

```
bash ~/Wavewatch/tools/setup-git.sh
```

3. **Install the autosave** (commits and pushes every minute):

```
bash ~/Wavewatch/tools/install-autosave.sh
```

4. **Open in Obsidian.** Open folder as vault: `~/Wavewatch`.
5. **Prepare the Mini and start the build:** `bash ~/Wavewatch/outputs/technology/2026-10-20_firebase-m0-m2/start-on-mini.sh`, then open Claude Code on the Mini in `~/wavewatch/WaveWatch-App` and paste the prompt from the same folder.

## Checks

- `python3 tools/wiki_lint.py` prints 0 errors.
- `git log origin/main` shows the founding commit.
- In Claude Code opened in the vault, a hand edit of `wiki/index.md` is refused by the hook guard.

## If it goes wrong

- `Permission denied (publickey)`: the remote must use `github-wavewatch`, not `github.com`.
- Push rejected: pull with rebase, push again. Never force-push.
- The folder is `~/Wavewatch` with a lower-case w. The scripts default to `~/WaveWatch`; on the default macOS disk format both names reach the same folder. If not, run the scripts with `VAULT=~/Wavewatch`.
