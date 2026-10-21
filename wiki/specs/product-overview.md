---
type: spec
title: Product overview and modules
summary: The twelve modules of WaveWatch, what each does, and where each stands.
status: active
last_updated: 2026-10-21
---

# Product overview and modules

## Purpose

One graded, linked record of every safety report in Jeffreys Bay, so the coordinator sees patterns, runs responses and hands SAPS usable packs. Scope rulings: [[decisions/2026-10-20_decision-osint-incident-coordination]], [[decisions/2026-10-20_decision-phase-1-modules]].

## In scope

| ID | Module | Artifact (v4) | Web app milestone |
|---|---|---|---|
| M1 | Map: incidents (pins, heat, replay), case routes, operations, patrol zones, cameras | Built | M2 |
| M2 | Source registry and grading ([[concepts/Source-grading]]) | Built | M2 |
| M3 | Reports feed and intake (WhatsApp import, manual, control room) | Built | M2, AI at M6 |
| M4 | Incidents with time windows, 22 types in 8 groups | Built | M2 |
| M5 | Cases and series: subjects, sightings route, tasks, hypotheses, handover, series matching | Built | M3 |
| M6 | Cameras and canvass: registry, statuses, gap streets, likely exit routes, footage request | Built | M3 |
| M7 | Operations: response log, timeline, search sectors, after-action, minimisation on close, live viewers | Built | M4 |
| M8 | Analysis: patterns, near-repeats ([[concepts/Near-repeat]]), repeat locations, response times, Ask | Built | M3, Ask at M6 |
| M9 | SAPS liaison and reporting: referral summary, follow-ups, monthly report, case pack, station statistics | Built | M3 |
| M10 | Contacts and role-player presets | Built | M2 |
| M11 | Public feed collector (scheduled) | Not built | M6 |
| M12 | Governance: retention, export, backup, restore, demo data, privacy rules | Built | M5 |
| M13 | Patrol planner and effect check | Built | M4 |
| M14 | Briefs: intelligence brief and resident bulletin | Built | M4 (draft), M6 (AI) |

## Out of scope

Identities of any kind ([[decisions/2026-10-20_decision-identity-boundary]]); storing footage; dispatching emergency services.

## Data

[[specs/data-model]].

## Acceptance criteria

Each module's acceptance test is in its ticket in `outputs/product/2026-10-20_firebase-build-plan/`. The design source for behaviour and wording is the artifact ([[specs/artifact-poc]]).

## Open questions

- Footage expiry countdown, footage fingerprinting, email intake: candidates for M7 ([[specs/roadmap]]).
- The full build spec doc is at https://claude.ai/code/artifact/a22b8b8f-1017-471f-8421-5c043c1907fe; it predates the Firebase ruling.
