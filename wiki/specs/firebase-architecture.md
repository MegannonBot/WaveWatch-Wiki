---
type: spec
title: Firebase architecture
summary: The proposed shape of the WaveWatch web app on Firebase: services, region, environments, cost and milestones.
status: active
last_updated: 2026-10-21
---

# Firebase architecture

## Purpose

Carry the artifact's behaviour to a standalone web app on Firebase ([[decisions/2026-10-20_decision-firebase-backend]]). Rows marked proposed stay **PROPOSED** until Franco rules; rows marked approved were ruled on 2026-10-21.

## In scope

| Layer | Choice | Ruling |
|---|---|---|
| Client | React, TypeScript, Vite; installable web app with a service worker; MapLibre GL with the OSM extract as GeoJSON | approved ([[decisions/2026-10-20_decision-web-stack]]) |
| Sign-in | Firebase Authentication: email and password, Google; phone at M6 | approved ([[decisions/2026-10-20_decision-sign-in-methods]]) |
| Database | Cloud Firestore, Native mode, location `africa-south1` (Johannesburg), offline persistence on | proposed |
| Tenancy | `orgs/{orgId}/...` | approved ([[decisions/2026-10-20_decision-org-scoped-data]]) |
| Roles | coordinator, analyst, responder, viewer | approved ([[decisions/2026-10-20_decision-roles]]) |
| Hosting | Firebase Hosting (static files only, no personal data) | proposed |
| Server | Cloud Functions 2nd gen in `africa-south1` from M6: AI extraction, briefs and Ask through the Claude API, WhatsApp webhook, scheduled public feeds, retention purge | approved ([[decisions/2026-10-20_decision-blaze-at-m6]]) |
| Files | None in v1. No footage or photos stored | proposed |
| Secrets | Claude API key and WhatsApp token in Secret Manager, never in the client | proposed |

## Environments

1. **Development:** Firebase emulator, project id `demo-wavewatch`, no login, on the laptop or the Mini.
2. **Beta:** one Firebase project created by Franco in `africa-south1`, Spark plan, no card, until M6.
3. **Production:** decided at Gate 1 ([[specs/roadmap]]).

## Out of scope

Native store apps; Realtime Database; Cloud Storage; any server outside South Africa for personal data where a South African region exists.

## Data

[[specs/data-model]] and [[specs/security-model]]. Migration from the artifact backup: [[runbooks/migrate-artifact-data]].

## Cost (estimates, ZAR at about R18 to the US dollar)

| Item | Cost | Note |
|---|---|---|
| Spark plan, M0 to M5 | R0 | Firestore 50,000 reads and 20,000 writes a day at no cost ([[research/2026-10-20_research_firebase-facts]]) |
| Blaze from M6 | pay as you go | budget alert at R200 a month |
| Claude API | about R50 to R100 a month at 100 to 200 extraction parts (estimate, UNVERIFIED) | M6 |
| Phone sign-in SMS | per message on Blaze, price UNVERIFIED | M6 |
| Domain (optional) | about R100 to R200 a year, UNVERIFIED | any time |

## Acceptance criteria

- Every collection read and write goes through typed converters with schema validation.
- Security rules deny by default and have a test per role and per collection.
- The app works in airplane mode for logging and syncs on reconnect.
- Lighthouse installability passes.

## Open questions

- Firebase Authentication user records: region of storage UNVERIFIED.
- PMTiles or GeoJSON for the map: GeoJSON first; PMTiles if the extract grows.
