---
name: session-end
description: Close a WaveWatch session so nothing is lost. Use at the end of any session that changed a file, produced a ruling, or learned a fact.
---

# Session end

Sessions are not memory. Anything not written here is lost.

1. **Rulings.** For each thing Franco decided this session, write a decision page (use the `decision` skill). For each thing Claude recommended and Franco has not ruled on, write it as `status: proposed`.
2. **State.** In `wiki/STATE.md`, overwrite the rows whose value changed and set `since` and `source`. Add or clear "Needs Franco" rows. Set `last_updated`. Stay under 80 lines.
3. **Log.** Add one entry at the top of `wiki/log.md`: `## [YYYY-MM-DD] <op> | <title>`, then one bold plain sentence, then at most five lines. Old values of changed state rows go here.
4. **Deliverables.** Every generated document is in `outputs/<domain>/YYYY-MM-DD_slug/`.
5. **Build and lint.** Run `python3 tools/wiki_build.py` then `python3 tools/wiki_lint.py`. Fix mechanical errors. Report anything else to Franco.
6. **Report.** Tell Franco in plain words: what changed, what needs his decision, and whether a commit is pending. A Cowork session never runs git.
