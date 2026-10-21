---
type: report
title: Design watch run, part 2, on the Mac Mini
summary: The second Mini design run finished the WaveWatch Watch look on branch design/watch, applied the four new rulings, and passed every test suite.
status: active
last_updated: 2026-10-21
---

# Design watch run, part 2, on the Mac Mini

## What was asked

Finish the design run on branch `design/watch` from step 6c, after applying four rulings of 2026-10-21: eight family shapes ([[decisions/2026-10-21_decision-family-shapes-approved]]), map ranges and the SAPS filter ([[decisions/2026-10-21_decision-design-run-choices]]), and @mentions removed whole ([[decisions/2026-10-21_decision-m0-m2-run-defaults]]). Brief: `outputs/technology/2026-10-21_design-watch-run/2026-10-21_technology_mini-design-prompt-part-2.md`.

## What was done

- The four rulings, one commit each: eight family shapes on the map, strip, lists and legends; map ranges 24 h, 7 d, 30 d, 90 d and All; "Crimes not reported to SAPS" as a filter; @mentions removed from @ to the next punctuation or line end and highlighted in the review step.
- The rest of the look: quick log with the privacy guard, full form, incident detail with the grade in words and the near-repeat note, reports feed and empty state, settings with the guard shown as always on, sign-in and its error state, and the computer layout from 1024 px.
- The review's copy changes, and accessibility checks (44 px targets on the main screens, the focus ring, control borders, names on icon buttons).
- Tests, final run 2026-10-21: 297 unit (40 skipped, see below), 234 rules, 49 end-to-end and 5 production-build, all passed. Screenshots of every screen in light and dark: `docs/screenshots/design-watch/` on the branch.
- Handover: `docs/reports/2026-10-21_design-watch-handover.md` on `design/watch`, section "Part 2".

## Needs a decision

1. Four choices from part 1 that Franco has not seen:
   - The map keeps "All incident types" and Pins or Heat on its top bar, next to the range and Filters (the mock-up shows only the range and Filters).
   - Lakes and wetlands take the sea colour; parks and beaches take the land colour (the design has no colours for them).
   - The More tab keeps its list of sections instead of the single settings page with counts in the mock-up.
   - Demo records show "Demo" in sentence case, not "DEMO".
2. Six smaller part 2 choices, listed in the handover, Part 2 section 6 (one accent button per screen in the feed, the full form's collapsed type picker, and others).

## Not done

- The five new family colours are not in the vault's `outputs/product/2026-10-21_design-system-watch/design-system/tokens.json`. The ruling says the copy was refreshed, but the file on GitHub still lists only three families (checked several times this session). The app draws the five new shapes in temporary colours (ink for emergencies, ink-muted for the rest). The 40 contrast checks for them are skipped until the file has the values; then `npm run tokens` applies them.
- Mock-up items that are features, not looks (operations, Add to a case, Share brief, People seen fields): left out as the brief says.
- Franco's phone check in light and dark, before the merge ([[decisions/2026-10-21_decision-merge-after-design-check]]).

## For Cowork

- **Design system copy:** add the five colour tokens (`family-violent`, `family-property`, `family-road`, `family-emergency`, `family-other`, light and dark) to `outputs/product/2026-10-21_design-system-watch/design-system/tokens.json` from the artifact. A Mini session then copies the file and runs `npm run tokens` on `design/watch`.
- **STATE, Design run row:** design run finished on `design/watch` on 2026-10-21; all suites pass; waiting for Franco's phone check, then merge into `main`. Source: this report.
- **STATE, Needs Franco:** add (a) check `design/watch` on the phone in light and dark (commands in the handover, Part 2 section 1); (b) rule on the four part 1 choices above.
- **Log:** one entry, `[2026-10-21] build | Design watch run, part 2`, pointing here.
- **Glossary:** "Watch strip" (the 24-hour band of incidents in the header) and "On this watch" (the incidents of the last 24 hours) are used in the app; add them if they are not there.
