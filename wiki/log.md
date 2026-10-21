---
type: log
title: WaveWatch log
summary: Append-only record of what happened, newest first.
status: active
last_updated: 2026-10-21
---

# Log

> Append at the top. Never rewrite an entry; a correction is a new entry. Each entry opens with one bold plain sentence. Cap 2,000 lines, then entries older than 30 days move to `log-archive.md`.

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
