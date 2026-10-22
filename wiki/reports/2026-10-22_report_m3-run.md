---
type: report
title: M3 run on the Mac Mini
summary: The Mini fixed the four layout points, made the test database reachable from a phone for development, and built M3 (cases, cameras, gap streets, series matching, patterns, SAPS liaison, station figures) on branch m3.
status: active
last_updated: 2026-10-22
---

# M3 run on the Mac Mini

## What was asked

Four layout fixes from the look check, phone access to the test database for development, then milestone M3 (WW-17 to WW-23) on a new branch `m3` from `main`, with screenshots and a handover. Brief: `outputs/technology/2026-10-22_m3-run/2026-10-22_technology_mini-m3-prompt.md`. Rulings followed: [[decisions/2026-10-22_decision-design-watch-merge]], [[decisions/2026-10-22_decision-design-run-final-choices]], [[decisions/2026-10-21_decision-built-for-wavecrest-watch]], [[decisions/2026-10-21_decision-design-b-approved]], [[decisions/2026-10-21_decision-m0-m2-run-defaults]].

## What was done

- Layout fixes, one commit each: the phone map keeps one control row (type and Pins or Heat inside Filters) and the sheet peeks one row; the map is padded so markers stay clear of the controls; suburb names avoid each other and the markers; the Log screen starts with one row of buttons ("More ways to add" and "Log incident").
- Phone access for development: the app talks to the emulator at the address the page was opened from; Auth and Firestore emulators listen on the local network; new `npm run dev:lan`. A production build never connects to an emulator (new test). Checked on the Mini: a browser at the Mini's Wi-Fi address signed in and read data.
- WW-17 cases and series; WW-18 cameras and canvass; WW-19 gap streets and likely exit routes; WW-20 series matching; WW-21 patterns, near-repeats, repeat locations, response times; WW-22 SAPS liaison; WW-23 station statistics by quarter. Every acceptance criterion is met. The analysis ports reproduce the artifact's own results: a script runs the artifact's functions on an invented fixture and the tests compare.
- Security rules tightened for cases, cameras and station figures, with rules tests for every role.
- Tests at the end: 521 unit, 267 rules, 69 end-to-end, 5 production-build and 2 build checks, all passing. At the start: 381 unit, 234 rules, 49 end-to-end, 5 production-build.
- Screenshots of the new screens at 390 px and 1440 px, light and dark: `docs/screenshots/m3/`; the layout-fix screens retaken in `docs/screenshots/design-watch/`.
- Handover with the phone steps: `docs/reports/2026-10-22_m3-handover.md` on branch `m3`.

## Needs a decision

1. 21 choices the specs did not settle, listed in the handover section "Choices to confirm". The ones with most weight:
   - The glossary calls a case "An investigation that links incidents..."; the app avoids "investigation" because of the legal rule that nothing may suggest WaveWatch investigates. Reword the glossary entry?
   - The SAPS referral gives the position to about 100 m (three decimals), not to the metre as in the artifact, so it never points at a house.
   - The evidence handover register gained the export window and CAS number as their own fields.
   - Before this run, a plain production build on the Mini connected to the emulator because of the local settings file; now only the dev server and the test build do.
2. Merge `m3` into `main` after a look at the screenshots, or after trying it on a phone first.

## Not done

- Nothing in the brief was skipped.
- Found and fixed in the final runs: the pulled-up "On this watch" sheet could not be lowered when many incidents were on the watch; timed-out tests had left test incidents in the emulator. Details in the handover, section 6.
- Response times show an empty state until operations arrive in M4.
- Not ported from the artifact on purpose: Ask, Briefs, operations, the patrol planner, main-map layer switches, the shared room and comments (handover section "What the artifact does that I did not port").

## For Cowork

- STATE, Stage row: M3 built on `m3` at `bac98a2` (521 unit, 267 rules, 69 end-to-end, 5 production-build tests passing). Not merged, not deployed; emulator only. Source: this report.
- STATE, Builder row: the M3 run finished 2026-10-22; the emulator was restarted twice (once for the new network hosts, once after it stopped answering under load) and left running in tmux `emu-ww`.
- STATE, Needs Franco: item 10 (start the run) is done. Item 7 (time a quick log on a phone) can now be done with the handover's phone steps. New: look at `docs/screenshots/m3/` and the 21 choices, then rule on merging `m3`.
- Log: one entry for the M3 run.
- Glossary: consider rewording "Case" to avoid "investigation"; consider adding "Station figures" (the station's published quarterly crime figures entered by quarter) and "Footage request" (the text sent to camera owners asking them to check footage).
