---
type: state
title: WaveWatch current state
summary: Volatile facts about the project right now, as a table with a source for each.
status: active
last_updated: 2026-10-20
---

# WaveWatch: current state

> Read first, every session. Volatile facts only, hard cap 80 lines. A changed fact overwrites its row; the old value goes in [[log]].

## Project

| Fact | Value | Since | Source |
|---|---|---|---|
| Stage | Proof of concept live as a Claude artifact (version 4, all Phase 1b modules plus nine extra features). Firebase build not started; build plan and first Mini prompt written. | 2026-10-20 | [[specs/artifact-poc]], [[reports/2026-10-20_report_founding-session]] |
| Name | WaveWatch | 2026-10-20 | [[decisions/2026-10-20_decision-product-name-wavewatch]] |
| Scope | OSINT and incident coordination: reports, incidents, cases, operations, patrols, SAPS liaison | 2026-10-20 | [[decisions/2026-10-20_decision-osint-incident-coordination]] |
| First user | Hannes, the coordinator, alone for now; phone first | 2026-10-20 | [[decisions/2026-10-20_decision-first-user-coordinator]] |
| Working areas | Suburbs, not SAPS sectors, for now | 2026-10-20 | [[decisions/2026-10-20_decision-suburbs-as-zones]] |
| Platform path | Hybrid: artifact proof of concept, then a web app | 2026-10-20 | [[decisions/2026-10-20_decision-hybrid-path]] |
| Backend for the web app | DECIDED: Firebase. Region, plan and stack are proposals | 2026-10-20 | [[decisions/2026-10-20_decision-firebase-backend]] |
| Proposed architecture | React, TypeScript and Vite installable web app; Firestore in `africa-south1`; emulator for development; Blaze only at milestone M6 | 2026-10-20 | [[specs/firebase-architecture]] (all PROPOSED) |
| Artifact | https://claude.ai/artifact/6m2Fk9ZfzmGqPiGpQFTttJ, version 4, sharing set to "Anyone with the link" (Franco to switch to private before inviting Hannes) | 2026-10-20 | Artifact publish result, 2026-10-20 |
| Build spec doc | https://claude.ai/code/artifact/a22b8b8f-1017-471f-8421-5c043c1907fe (states Supabase for Phase 3; superseded on that point by the Firebase ruling) | 2026-10-20 | [[specs/product-overview]] |
| User guide | 8-page PDF for Hannes | 2026-10-20 | `outputs/product/2026-10-20_user-guide/` |
| Cost target | Near zero; R0 through the proof of concept | 2026-10-20 | [[decisions/2026-10-20_decision-near-zero-cost]] |

## Vault and tooling

| Fact | Value | Since | Source |
|---|---|---|---|
| Vault location | `~/Wavewatch` on Franco's Mac (folder named with a lower-case w; macOS paths are case-insensitive by default, UNVERIFIED for this disk) | 2026-10-20 | Folder added by Franco, 2026-10-20 |
| Vault shape | Copied from the Skiet Goed vault, which is the newest form of the Certech template | 2026-10-20 | [[decisions/2026-10-20_decision-vault-repos-and-builder]] |
| Claude Code configuration | Installed in `.claude/` | 2026-10-20 | [[runbooks/first-time-setup]] |
| GitHub | Account `MegannonBot`. `WaveWatch-Wiki` created and the vault pushed (key `id_ed25519_wavewatch`, alias `github-wavewatch`). `WaveWatch-App` created, empty | 2026-10-20 | Franco's Terminal output, 2026-10-20 |
| Builder | Claude Code on the Mac Mini, from prompts in `outputs/technology/` | 2026-10-20 | same |
| Work registry | Not loaded. 37 tickets drafted in `outputs/product/2026-10-20_firebase-build-plan/` | 2026-10-20 | that folder |

## Needs Franco

| # | Question | Why it matters |
|---|---|---|
| 1 | Finish first-time setup: install the autosave, then run `start-on-mini.sh` ([[runbooks/first-time-setup]], steps 3 and 5) | The Mini run cannot start until it has the key and the clones |
| 2 | Rule on the six proposals: stack, tenancy, roles, sign-in, Blaze timing, identity boundary ([[specs/firebase-architecture]]) | The Mini builds on them as defaults until ruled |
| 3 | Which organisation runs WaveWatch: the CPF, a neighbourhood watch, a separate body, or MEGANNONME as service provider? | Sets the POPIA responsible party and who signs data-sharing agreements |
| 4 | Switch the artifact to private, then invite Hannes with Can edit | Link visitors see no data; invitees get link-level access while a link is on |
| 5 | Camera networks, security companies and role players operating in Jeffreys Bay | Seeds sources, cameras and presets with real organisations |
| 6 | Attorney view on POPIA s57 prior authorisation and s72 cross-border transfer before outside users join | Required before Gate 1 |
