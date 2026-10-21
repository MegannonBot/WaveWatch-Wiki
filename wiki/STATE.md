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
| First user | Hannes, the coordinator, alone for now; phone first | 2026-10-20 | [[decisions/2026-10-20_decision-first-user-coordinator]] |
| Working areas | Suburbs, not SAPS sectors, for now | 2026-10-20 | [[decisions/2026-10-20_decision-suburbs-as-zones]] |
| Platform path | Hybrid: artifact proof of concept, then a web app | 2026-10-20 | [[decisions/2026-10-20_decision-hybrid-path]] |
| Operator | DECIDED: Megannon.ME (MEGANNONME (Pty) Ltd) runs WaveWatch. Responsible party status UNVERIFIED, attorney to confirm | 2026-10-21 | [[decisions/2026-10-21_decision-operator-megannon-me]] |
| Backend for the web app | DECIDED: Firebase. Database region (`africa-south1`), hosting and secrets handling are still proposals | 2026-10-21 | [[decisions/2026-10-20_decision-firebase-backend]] |
| Architecture | APPROVED: installable React, TypeScript and Vite web app, org-scoped data, four roles, email and Google sign-in (phone at M6), Blaze only at M6, events and descriptions never identities | 2026-10-21 | [[specs/firebase-architecture]], Franco 2026-10-21 |
| Artifact | https://claude.ai/artifact/6m2Fk9ZfzmGqPiGpQFTttJ, version 4, sharing set to "Anyone with the link" (Franco to switch to private before inviting Hannes) | 2026-10-20 | Artifact publish result, 2026-10-20 |
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
| Work registry | Not loaded. 37 tickets drafted in `outputs/product/2026-10-20_firebase-build-plan/` | 2026-10-20 | that folder |

## Needs Franco

| # | Question | Why it matters |
|---|---|---|
| 4 | Switch the artifact to private, then invite Hannes with Can edit (recommended 2026-10-21: Hannes uses the artifact until the web app beta) | Link visitors see no data; invitees get link-level access while a link is on |
| 5 | Camera networks, security companies and role players operating in Jeffreys Bay | Seeds sources, cameras and presets with real organisations |
| 6 | Attorney view on POPIA s57 prior authorisation and s72 cross-border transfer, and on whether MEGANNONME (Pty) Ltd is the responsible party, before outside users join | Required before Gate 1 |
| 7 | Try the build on the laptop (handover section 1), and time a quick log on a phone (WW-12, target under 20 seconds) | Closes WW-12 and is the first look at the real app |
| 8 | Confirm or change the 15 run defaults in the handover, section 5 (privacy ones: verified email to join, members' emails stored, every delete audited, extra guard warnings) | The next run builds on them |
| 9 | Merge `m0-m2` into `main`, or not yet | `main` holds only a README |
