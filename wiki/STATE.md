---
type: state
title: WaveWatch current state
summary: Volatile facts about the project right now, as a table with a source for each.
status: active
last_updated: 2026-10-21
---

# WaveWatch: current state

> Read first, every session. Volatile facts only, hard cap 80 lines. A changed fact overwrites its row; the old value goes in [[log]].

## Project

| Fact | Value | Since | Source |
|---|---|---|---|
| Stage | Web app milestones M0 to M2 built on branch `m0-m2` of `WaveWatch-App` (15 of 16 tickets done, WW-12 partly done; 487 tests pass). Not merged to `main`, not deployed. Artifact v4 remains the live demo. | 2026-10-21 | [[reports/2026-10-20_report_m0-m2-run]] |
| Name | WaveWatch | 2026-10-20 | [[decisions/2026-10-20_decision-product-name-wavewatch]] |
| Scope | OSINT and incident coordination: reports, incidents, cases, operations, patrols, SAPS liaison | 2026-10-20 | [[decisions/2026-10-20_decision-osint-incident-coordination]] |
| First organisation | Wavecrest Watch, Wavecrest, Jeffreys Bay | 2026-10-21 | [[decisions/2026-10-21_decision-built-for-wavecrest-watch]] |
| First user | Hannes, the coordinator, alone for now; phone first | 2026-10-20 | [[decisions/2026-10-20_decision-first-user-coordinator]] |
| Working areas | Suburbs, not SAPS sectors, for now | 2026-10-20 | [[decisions/2026-10-20_decision-suburbs-as-zones]] |
| Platform path | Web app first for Hannes; the artifact is a demo and behaviour reference only | 2026-10-21 | [[decisions/2026-10-21_decision-hannes-starts-on-web-app]] |
| Operator | DECIDED: Megannon.ME (MEGANNONME (Pty) Ltd) runs WaveWatch. Responsible party status UNVERIFIED, attorney to confirm | 2026-10-21 | [[decisions/2026-10-21_decision-operator-megannon-me]] |
| Backend for the web app | DECIDED: Firebase. Database region (`africa-south1`), hosting and secrets handling are still proposals | 2026-10-21 | [[decisions/2026-10-20_decision-firebase-backend]] |
| Architecture | APPROVED: installable React, TypeScript and Vite web app (offline not required), org-scoped data, four roles, email and Google sign-in (phone at M6), Blaze only at M6, events and descriptions never identities | 2026-10-21 | [[specs/firebase-architecture]], [[decisions/2026-10-21_decision-web-stack-offline-not-required]] |
| Artifact | https://claude.ai/artifact/6m2Fk9ZfzmGqPiGpQFTttJ, version 4, sharing set to "Anyone with the link"; Hannes will not be invited | 2026-10-20 | Artifact publish result, 2026-10-20 |
| Build spec doc | https://claude.ai/code/artifact/a22b8b8f-1017-471f-8421-5c043c1907fe (states Supabase for Phase 3; superseded on that point by the Firebase ruling) | 2026-10-20 | [[specs/product-overview]] |
| User guide | 8-page PDF for Hannes | 2026-10-20 | `outputs/product/2026-10-20_user-guide/` |
| Cost target | Near zero; R0 through the proof of concept | 2026-10-20 | [[decisions/2026-10-20_decision-near-zero-cost]] |

## Vault and tooling

| Fact | Value | Since | Source |
|---|---|---|---|
| Vault location | `~/Wavewatch` on Franco's Mac (folder named with a lower-case w; macOS paths are case-insensitive by default, UNVERIFIED for this disk) | 2026-10-20 | Folder added by Franco, 2026-10-20 |
| Vault shape | Copied from the Skiet Goed vault, which is the newest form of the Certech template | 2026-10-20 | [[decisions/2026-10-20_decision-vault-repos-and-builder]] |
| Claude Project | `WaveWatch` project created with `PROJECT-INSTRUCTIONS.md` as its instructions; no knowledge files (the vault is read live) | 2026-10-21 | Franco, 2026-10-21 |
| Claude Code configuration | Installed in `.claude/` | 2026-10-20 | [[runbooks/first-time-setup]] |
| GitHub | Account `MegannonBot`. `WaveWatch-Wiki` created and the vault pushed (key `id_ed25519_wavewatch`, alias `github-wavewatch`). `WaveWatch-App` created, empty | 2026-10-20 | Franco's Terminal output, 2026-10-20 |
| Builder | Claude Code on the Mac Mini. First run (M0 to M2) finished 2026-10-20; it ran in auto mode, not the normal mode the brief assumed. The session used Node 20.20.2 (Homebrew has Node 26), so Firebase 12 is pinned. Emulator left running in tmux `emu-ww` | 2026-10-21 | [[reports/2026-10-20_report_m0-m2-run]] |
| Laptop build | `~/WaveWatch-App` on branch `m0-m2` runs on the laptop (Node 20.20.2, Java 21 from Homebrew, not linked); npm reports 29 vulnerabilities, not investigated | 2026-10-21 | Franco's Terminal output, 2026-10-21 |
| Design run | Design system "WaveWatch Watch" approved (https://claude.ai/artifact/NL9nPKd5FdBfVvLMiTwZwV; vault copy `outputs/product/2026-10-21_design-system-watch/`). Mini run part 1 on `design/watch`: steps 1 to 6b done (fonts, tokens with 76 contrast checks passing, theme setting, shell, map); 6c to 6h, copy changes, full tests and screenshots open (usage limit reached) | 2026-10-21 | [[reports/2026-10-21_report_design-watch-run]] |
| Work registry | Not loaded. 37 tickets drafted in `outputs/product/2026-10-20_firebase-build-plan/` | 2026-10-20 | that folder |

## Needs Franco

| # | Question | Why it matters |
|---|---|---|
| 10 | Start part 2 of the Mini design run: same session setup, then send "Read and follow ~/wavewatch/WaveWatch-Wiki/outputs/technology/2026-10-21_design-watch-run/2026-10-21_technology_mini-design-prompt-part-2.md" | Finishes the look, the eight family shapes and the @mention fix |
| 5 | Supply the security companies and camera networks to load; the public-source list kept only the municipal network and the watches ([[research/2026-10-21_research_jbay-role-players]]) | Seeds sources, cameras and presets |
| 6 | Send Hannes (an attorney) the POPIA questions in `outputs/legal/2026-10-21_popia-questions-hannes/`; file his written answers | Required before Gate 1 |
| 7 | Time a quick log on a phone (WW-12, target under 20 seconds), on the new look after the design run | Closes WW-12 |
| 9 | Merge `design/watch` into `main` after the phone check (one merge) | [[decisions/2026-10-21_decision-merge-after-design-check]] |
