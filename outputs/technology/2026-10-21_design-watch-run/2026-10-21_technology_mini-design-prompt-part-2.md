# WaveWatch: design run "Watch", part 2

**Read this first.** Same session setup, hard limits and handover as part 1: `2026-10-21_technology_mini-design-prompt.md` in this folder. Read it, then `git -C ~/wavewatch/WaveWatch-Wiki pull --rebase`, then your part 1 handover (`docs/reports/2026-10-21_design-watch-handover.md` on `design/watch`). Continue on branch `design/watch`.

## What changed since part 1 (rulings of 2026-10-21, in `wiki/decisions/`)

- **design-run-choices** and **family-shapes-approved:** all eight incident families have a shape and colour. The design system copy in the vault is updated: `tokens.json` (`family-violent`, `family-property`, `family-road`, `family-emergency`, `family-other`) and `components/FamilyShapes/`. Replace the neutral diamond on the map, the watch strip, lists and legends. Extend the contrast test to the five new tokens.
- Map ranges: 24 h, 7 d, 30 d, 90 d, All.
- "Not reported to SAPS" is a filter only; the newest incident keeps its ring.
- **m0-m2-run-defaults:** an @mention in pasted WhatsApp text is removed whole, from @ to the next punctuation or line end, and the spot is highlighted in the review step. Add tests, including a three-word name.

## The run

1. Pull `design/watch`, run the full test suite once, and note the starting counts. If emulator writes are slow, restart the emulator in tmux `emu-ww` first; do not touch other projects' processes even if the Mini is under load.
2. The four changes above, one commit each.
3. Part 1's brief from step 6c to the end (6c to 6h, copy changes, accessibility including the 44 px test, full tests, `npm audit` already done, screenshots).
4. If you are close to your usage limit, stop at a clean commit and write the handover first.

## Handover

Update `docs/reports/2026-10-21_design-watch-handover.md` with a "Part 2" section, and add `wiki/reports/<today>_report_design-watch-run-part-2.md` with the "For Cowork" section. Also list the four choices from part 1's section 6 that Franco has not seen yet, plainly, so Cowork can put them to him.
