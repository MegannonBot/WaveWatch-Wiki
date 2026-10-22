# Autosave fix, 2026-10-22

Why: on 2026-10-21 the laptop autosave hung for 4.5 hours on `git fetch` with no time limit, and macOS starts no new run while one is still going, so nothing was saved after 16:09. On 2026-10-22 it logged "fetch failed (offline?)" with the real error discarded. `save.sh` pushed without pulling, so a push from the Mini made it fail.

What changes:
- `autosave.sh`: ssh never waits for a passphrase and gives up after 15 s of silence; each network step is cut off after 90 s; the real git or ssh error is written to the log; one notification if GitHub has been unreachable for an hour.
- `save.sh`: pulls (rebase) before pushing, with the same limits; pushes anything already committed even when there is nothing new.

Install (on the laptop, from the vault folder): see the commands Claude gives in the session. Undo: `git checkout HEAD~1 -- tools/autosave.sh tools/save.sh` in the commit after install.
