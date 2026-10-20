---
type: output
title: Firebase build plan
summary: 37 tickets, WW-01 to WW-37, in build order across milestones M0 to M7.
status: active
last_updated: 2026-10-20
---

# WaveWatch Firebase build plan

Architecture: [[specs/firebase-architecture]] (proposals pending Franco). Ticket data for GitHub: `2026-10-20_product_firebase-issues.json`, loaded by `load-issues.sh` into `MegannonBot/WaveWatch-App`.

The first Mini run covers M0 to M2 (WW-01 to WW-16): `outputs/technology/2026-10-20_firebase-m0-m2/`.

## M0 Foundations

Repository, emulator, app shell and base map.

| Ticket | Title | Depends on |
|---|---|---|
| WW-01 | Repository scaffold |   |
| WW-02 | Firebase emulator setup | WW-01 |
| WW-03 | CI workflow, manual only | WW-02 |
| WW-04 | Design tokens and app shell | WW-01 |
| WW-05 | Base map from the OSM extract | WW-01 |

## M1 Accounts and data

Sign-in, organisations, security rules, typed data layer, audit, offline.

| Ticket | Title | Depends on |
|---|---|---|
| WW-06 | Sign-in | WW-02 |
| WW-07 | Organisations, members and invites | WW-06 |
| WW-08 | Security rules v1 with tests | WW-07 |
| WW-09 | Typed data layer | WW-07 |
| WW-10 | Audit log | WW-08 |
| WW-11 | Offline persistence and sync status | WW-09 |

## M2 Core logging

Incidents, map, reports feed, contacts, settings. First usable build.

| Ticket | Title | Depends on |
|---|---|---|
| WW-12 | Incident log with privacy guard | WW-09,WW-05 |
| WW-13 | Map view of incidents | WW-12,WW-05 |
| WW-14 | Reports feed and grading | WW-09 |
| WW-15 | Contacts and role-player presets | WW-09 |
| WW-16 | Settings | WW-09 |

## M3 Cases and analysis

Cases, cameras and canvass, series matching, patterns, SAPS liaison and statistics.

| Ticket | Title | Depends on |
|---|---|---|
| WW-17 | Cases and series | WW-13 |
| WW-18 | Cameras and canvass | WW-17 |
| WW-19 | Gap streets and likely exit routes | WW-18 |
| WW-20 | Series matching | WW-17 |
| WW-21 | Patterns, near-repeats, repeat locations | WW-13,WW-16 |
| WW-22 | SAPS liaison | WW-17 |
| WW-23 | Station statistics by quarter | WW-09 |

## M4 Operations and patrols

Live operations, after-action, patrol planner, briefs.

| Ticket | Title | Depends on |
|---|---|---|
| WW-24 | Live operations | WW-13,WW-15 |
| WW-25 | Close, minimise and after-action | WW-24 |
| WW-26 | Patrol planner and effect check | WW-21 |
| WW-27 | Briefs from templates | WW-21 |

## M5 Migration and governance

Artifact import, exports, retention, privacy notice, beta project.

| Ticket | Title | Depends on |
|---|---|---|
| WW-28 | Import the artifact backup | WW-09 |
| WW-29 | Exports | WW-28,WW-10 |
| WW-30 | Retention purge | WW-10,WW-16 |
| WW-31 | Privacy notice and onboarding | WW-07 |
| WW-32 | Beta project (Franco only) | WW-31 |

## M6 Server features (Blaze)

Cloud Functions, AI, WhatsApp intake, public feeds, phone sign-in.

| Ticket | Title | Depends on |
|---|---|---|
| WW-33 | Functions base and secrets | WW-32 |
| WW-34 | AI extraction, AI briefs and Ask | WW-33 |
| WW-35 | WhatsApp intake and public feeds | WW-33 |
| WW-36 | Phone sign-in | WW-33 |

## M7 Community

Resident camera census, footage expiry countdown, street warnings.

| Ticket | Title | Depends on |
|---|---|---|
| WW-37 | Community features | WW-29 |

