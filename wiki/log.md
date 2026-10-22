---
type: log
title: WaveWatch log
summary: Append-only record of what happened, newest first.
status: active
last_updated: 2026-10-21
---

# Log

> Append at the top. Never rewrite an entry; a correction is a new entry. Each entry opens with one bold plain sentence. Cap 2,000 lines, then entries older than 30 days move to `log-archive.md`.

## [2026-10-22] decision | M3 choices approved; merge after the phone test

**Franco approved the M3 run's 21 choices and ruled that `m3` merges after he times a quick log on his phone.**
New page [[decisions/2026-10-22_decision-m3-choices-and-merge]]. Check page of 80 screenshots published. Three small fixes added to `outputs/technology/2026-10-22_layout-fixes/`.

## [2026-10-22] build | M3 run on the Mini

**The Mini built the four layout fixes, phone access and M3 (WW-17 to WW-23) on branch `m3`, with every test passing on a cleared emulator.**
Report [[reports/2026-10-22_report_m3-run]]. Old STATE Stage: "M0 to M2 in the Watch look merged into `main`". Glossary: "Case" reworded so it does not say WaveWatch investigates; added "Footage request" and "Station figures". The 500-incident hang was the On this watch sheet, not label overlap.

## [2026-10-22] plan | Next Mini run brief: fixes, phone access, M3

**The brief for the next Mini run is written: the four layout fixes, phone access to the test database, then M3 (WW-17 to WW-23) on a new branch `m3`.**
Brief in `outputs/technology/2026-10-22_m3-run/`. Autosave confirmed working after the fix (pushed on its own at 12:55 and 12:56). New Needs Franco 10.

## [2026-10-22] fix | Autosave time limits and pull before push

**Fixed versions of the autosave and save scripts were prepared for Franco to install, after the autosave hung on 2026-10-21 and failed silently on 2026-10-22.**
Files and reasons in `outputs/technology/2026-10-22_autosave-fix/`. Cowork cannot write executable files in `tools/`; Franco copies them in. A stray empty `tools/.probe` made by Cowork while checking is removed in the same step. Mistakes register candidate for Franco: test write access on a scratch path outside the vault's tools.

## [2026-10-22] build | design/watch merged into main

**Franco merged `design/watch` into `main`; `main` now holds M0 to M2 in the Watch look at `5d9a983`.**
Old STATE Stage: "Web app milestones M0 to M2 built on branch `m0-m2` ... Not merged to `main`". Needs Franco 10 cleared.

## [2026-10-22] decision | Look check passed; merge approved

**Franco passed the Watch look from screenshots and approved merging `design/watch` into `main`, with four layout fixes queued for the next Mini run.**
New page [[decisions/2026-10-22_decision-design-watch-merge]]. Look-check page: https://claude.ai/artifact/AmbNGJNvQwafCWCK6MRzKB. Needs Franco 9 cleared; 10 now pushes the merge; 7 notes the phone cannot reach the test database yet.

## [2026-10-22] build | Design run colours applied

**The Mini applied all eight family colours and the park and beach colours on `design/watch` (`7a99b46`); every test passes with no contrast check skipped.**
Old STATE Design run: "Five new family colours missing in the app". The Mini's emulator had stopped overnight with no reason in its log; restarted and re-seeded.

## [2026-10-22] build | Design watch run, part 2

**Part 2 of the design run finished on `design/watch` with all suites passing; its report is filed.**
Report [[reports/2026-10-21_report_design-watch-run-part-2]]. Glossary: added "Watch strip" and "On this watch". Five of the six small part 2 choices are still to be read from the app handover at the phone check.

## [2026-10-22] decision | Last design choices; park and beach colours

**Franco ruled on the five remaining design choices and asked for park and beach colours, now in the design system.**
New page [[decisions/2026-10-22_decision-design-run-final-choices]]. Design system and vault copy updated, checksums match.

## [2026-10-22] build | Design run finished; family colours fixed in the vault

**The Mini finished the design run on `design/watch` with all tests passing, but the five new family colours were missing because the vault copy of `tokens.json` was stale; it is now fixed.**
A copy from Cowork to the laptop on 2026-10-21 reported success but wrote the old file; rewritten 2026-10-22 and checked by checksum (`8e0b79b0`). Laptop autosave still stuck on `git fetch` since 16:09 on 2026-10-21. Mistakes register candidate for Franco: check a copied file's content after copying it to the laptop.

## [2026-10-21] decision | Built for Wavecrest Watch; security company list withdrawn

**Franco said WaveWatch is built for Wavecrest Watch, and the security company list from a business directory was withdrawn as wrong.**
New pages [[decisions/2026-10-21_decision-built-for-wavecrest-watch]] and [[entities/Wavecrest-Watch]]. Withdrawal grep: only [[research/2026-10-21_research_jbay-role-players]] held the list; fixed. Also found: the laptop autosave last ran at 16:09, so nothing since was pushed (the part 2 brief included).

## [2026-10-21] decision | Merge plan; POPIA questions for Hannes; role players listed

**Franco ruled to merge once after the phone check, said Hannes is an attorney, and asked for a public-source list of role players.**
New pages [[decisions/2026-10-21_decision-merge-after-design-check]] and [[research/2026-10-21_research_jbay-role-players]]; question pack in `outputs/legal/2026-10-21_popia-questions-hannes/`. Hannes entity updated. Needs Franco 5, 6, 7 and 9 reworded.

## [2026-10-21] decision | First build run choices confirmed; family shapes approved

**Franco confirmed the M0 to M2 run's choices, ruled that @mentions are removed whole, and approved shapes for all eight incident families.**
New pages [[decisions/2026-10-21_decision-m0-m2-run-defaults]] and [[decisions/2026-10-21_decision-family-shapes-approved]]. Part 2 brief written in `outputs/technology/2026-10-21_design-watch-run/`. Needs Franco 8 cleared; 10 now starts part 2.

## [2026-10-21] decision | Design run choices

**Franco ruled on three design-run choices; five new family shapes were added to the design system for his approval.**
New page [[decisions/2026-10-21_decision-design-run-choices]]. Design system updated (tokens, README, FamilyShapes) and the vault copy refreshed. Needs Franco 8 not yet answered (his reply carried the run summary instead).

## [2026-10-21] build | Design watch run, part 1

**The Mini applied fonts, colours, the theme setting, the shell and the map on `design/watch`, then stopped at its usage limit.**
Report [[reports/2026-10-21_report_design-watch-run]]. Old STATE Design run: "Mini design run STARTED 2026-10-21". One end-to-end test fails in full runs from slow emulator writes while another project loaded the Mini; the same showed on `m0-m2`.

## [2026-10-21] build | Design run started on the Mini

**Franco started the Mini design run on branch `design/watch`.**
Old STATE Design run: "Mini design run brief ready, not started". Needs Franco 10 now: check the result on his phone before merge.

## [2026-10-21] decision | Design system approved; design run brief written

**Franco approved the WaveWatch Watch design system, and the brief for the Mini design run is ready.**
New page [[decisions/2026-10-21_decision-design-system-watch-approved]]. Vault copy of the design system and the 15 screen mock-ups: `outputs/product/2026-10-21_design-system-watch/`. Brief: `outputs/technology/2026-10-21_design-watch-run/`. Needs Franco 10 now: start that run.

## [2026-10-21] design | Design System artifact drafted

**Direction B was recorded as the Design System artifact "WaveWatch Watch" for Franco to approve.**
https://claude.ai/artifact/NL9nPKd5FdBfVvLMiTwZwV: tokens, brand book, Button, WatchStrip, LogRow, GradeBadge, SyncChip, PrivacyGuard and a cover. Fonts named as hosted faces until the files are bundled. New Needs Franco 10.

## [2026-10-21] decision | Design B approved

**Franco approved the direction B design, team positions for responders and calling the coordinator without showing the number.**
New page [[decisions/2026-10-21_decision-design-b-approved]]. Old STATE Design run: "Direction B, Watch, refined ... 4 open points approved; Design System artifact next".

## [2026-10-21] design | Operator screens on a computer

**Three computer screens were drawn in direction B for the control room: the coordinator's overview, a live operation, and a security company's responder view.**
On the canvas, row "Operator screens in B"; notes and 2 new open points at the end of `outputs/product/2026-10-21_design-directions/2026-10-21_product_b-watch-review.md`.

## [2026-10-21] decision | B refinement points approved

**Franco approved the four open points from the B refinement ("That looks good").**
New page [[decisions/2026-10-21_decision-b-refinement-points]]. Needs Franco 10 cleared. He then asked how the operator screens would look.

## [2026-10-21] design | Direction B refined

**Direction B was reviewed with the design critique, accessibility and copy skills and redrawn as 11 screens; four open points wait for Franco.**
Review and open points: `outputs/product/2026-10-21_design-directions/2026-10-21_product_b-watch-review.md`. Main fixes: control borders to 3:1, visible focus, map list as a sheet, a way to change the time in quick log, mono only for times and grades.
Old STATE Design run: "Direction B, Watch, chosen; refinement pass next". New Needs Franco 10.

## [2026-10-21] decision | Offline is not a requirement

**Franco ruled that working offline is not a requirement; the offline saving already built stays.**
New page [[decisions/2026-10-21_decision-web-stack-offline-not-required]], superseding [[decisions/2026-10-20_decision-web-stack]]. Airplane-mode criterion removed from [[specs/firebase-architecture]]. STATE Architecture row now says offline not required.

## [2026-10-21] decision | Design direction B, Watch

**Franco chose design direction B, Watch, over Claude's recommendation of C.**
New page [[decisions/2026-10-21_decision-design-direction-watch]]. Old STATE Design run: "Three directions drawn; Franco to pick one". Needs Franco 10 cleared.

## [2026-10-21] design | Laptop build run; design run started

**Franco ran the app on his laptop, decided on a design run before new features, and three design directions are ready for him to pick from.**
New page [[decisions/2026-10-21_decision-design-run-first]]; report [[reports/2026-10-21_report_design-directions]]. Brief and comparison in `outputs/product/2026-10-21_design-directions/`.
Old STATE Needs Franco 7: "Try the build on the laptop ... and time a quick log on a phone". New rows: Laptop build, Design run, Needs Franco 10.

## [2026-10-21] decision | Hannes starts on the web app

**Franco ruled that Hannes skips the artifact and gets a link to the web app when it is ready.**
New page [[decisions/2026-10-21_decision-hannes-starts-on-web-app]], superseding [[decisions/2026-10-20_decision-hybrid-path]]. Old STATE Platform path: "Hybrid: artifact proof of concept, then a web app". Needs Franco 4 cleared.
Pages fixed: hybrid-path (superseded), roadmap (proof of concept gate removed), Hannes, STATE.

## [2026-10-21] decision | Six architecture proposals approved; Megannon.ME runs WaveWatch

**Franco approved all six architecture proposals and ruled that Megannon.ME runs WaveWatch.**
Approved: web stack (web app kept after a comparison with the Skiet Goed and Certech stacks), org-scoped data, four roles, sign-in methods, Blaze at M6, identity boundary. New page [[decisions/2026-10-21_decision-operator-megannon-me]].
Old STATE values: Backend "Region, plan and stack are proposals"; "Proposed architecture ... (all PROPOSED)". Needs Franco 2 and 3 cleared; 6 now includes the responsible party question.
Pages fixed: six decision pages, near-zero-cost, first-user-coordinator, product-name, firebase-architecture, privacy-and-evidence (responsible party basis s55 now UNVERIFIED), product-overview, data-model, security-model, Franco-Megannon, Hannes.

## [2026-10-21] build | M0 to M2 run on the Mini

**The first Mini run built WW-01 to WW-16 on branch `m0-m2`: 15 done, WW-12 partly done, all 487 tests passing, emulator only.**
Old STATE Stage: "Firebase build not started". Details and open items in [[reports/2026-10-20_report_m0-m2-run]]. The session ran in auto mode and on Node 20, both different from what the brief assumed.

## [2026-10-20] setup | Mini prepared; first build run started

**The Mini has both repositories, the WaveWatch key, Java 21 and the build prompt, and Franco started the M0 to M2 run.**
Java 21 installed with Homebrew and left unlinked so Java 17 stays the system Java. Homebrew also upgraded 15 shared libraries. Added `PROJECT-INSTRUCTIONS.md` for the Claude Project.

## [2026-10-20] setup | Vault on GitHub

**Franco moved the Claude Code configuration into place, created both repositories and pushed the vault to `MegannonBot/WaveWatch-Wiki`.**
Old STATE values: GitHub "repositories not yet created"; configuration "delivered in `_claude-setup/`". Autosave and the Mini preparation still to run.

## [2026-10-20] found | Vault founded; Firebase build planned

**The WaveWatch second brain was founded from the Skiet Goed template, with the founding session filed, and the Firebase build was planned for the Mac Mini.**
Filed: 13 decisions by Franco, 6 proposals, 8 specs, 6 research pages, 4 runbooks and the founding report. Outputs: the artifact source, the user guide PDF, the build plan with 37 tickets, and the first Mini prompt (milestones M0 to M2). Nothing committed yet: the vault is not under git ([[runbooks/first-time-setup]]).
