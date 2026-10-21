---
type: report
title: Design watch run on the Mac Mini (stopped early)
summary: The first part of the WaveWatch Watch design run on branch design/watch: fonts, tokens, theme setting, shell and map done; the rest not done.
status: active
last_updated: 2026-10-21
---

# Design watch run on the Mac Mini (stopped early)

## What was asked

Apply the approved design system ([[decisions/2026-10-21_decision-design-system-watch-approved]]) to the app on branch `design/watch`, from the brief in `outputs/technology/2026-10-21_design-watch-run/`, with no new features.

## What was done

- Steps 1 to 6b of the brief, each committed and pushed: bundled IBM Plex fonts (SIL OFL 1.1), the design tokens with a contrast test (76 checks pass), the theme setting with Match phone as default ([[decisions/2026-10-21_decision-b-refinement-points]]), a design rules file, the shell and tab bar, and the map with the watch strip, family shapes and the On this watch sheet.
- npm audit recorded: 29 findings (2 low, 11 moderate, 16 high), no fix run.
- Handover: `docs/reports/2026-10-21_design-watch-handover.md` on `design/watch`.

## Needs a decision

Seven choices the design system did not settle, listed in the handover, section 6. The largest: five incident families have no shape or colour in the design, so they are drawn as a neutral diamond.

## Not done

Steps 6c to 6h (quick log and privacy guard, full form and detail, reports feed, settings guard row, sign-in, most of the computer layout), the copy changes, the 44 px test, the final full test run and the screenshots. The session's usage limit was reached. One end-to-end test fails in full runs because emulator writes were slow while another project loaded the Mini (load average about 11); the same slowness showed on the `m0-m2` code.

## For Cowork

- **STATE, Design run row:** design run started 2026-10-21 on `design/watch`; steps 1 to 6b done, the rest open. Source: this report.
- **STATE, Needs Franco 10:** replace with "Start a second Mini run to finish the design run from step 6c (brief unchanged)".
- **Log:** one entry, `[2026-10-21] build | Design watch run, part 1`, pointing here.
