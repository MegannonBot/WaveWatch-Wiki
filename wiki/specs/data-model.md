---
type: spec
title: Data model
summary: The collections, key fields and links shared by the artifact and the Firebase web app.
status: active
last_updated: 2026-10-20
---

# Data model

## Purpose

One shape for the artifact and the web app, so moving across is an import ([[decisions/2026-10-20_decision-hybrid-path]]).

## In scope

Web app paths start with `orgs/{orgId}/` ([[decisions/2026-10-20_decision-org-scoped-data]], proposed). Times are epoch milliseconds. Locations are `lon`, `lat` at five decimals.

| Collection | Key fields | Links |
|---|---|---|
| `members/{uid}` | role, invitedBy, joinedAt | web app only |
| `incidents` | ref, type, ts, tsEnd, approx, area, street, lon, lat, areaPin, method, items, desc, vehicle, source, sourceRef, saps, cas, followUp, sapsNotes, caseId, opId, history[], demo | case, operation |
| `reports` | ts, source, rel (A to F), cred (1 to 6), text, area, street, lon, lat, state (new, linked, dismissed), reason, link {kind, id}, demo | incident, case or operation |
| `cases` | ref, title, status (open, saps, closed), area, series, summary, subjects[], sightings[], tasks[], hypotheses[], handovers[], canvass {cameraId: {status, at}}, window {start, end}, demo | incidents by caseId |
| `ops` | ref, kind, title, status (active, stood, closed), start, end, loc, lkp, found, responders[], timeline[], sectors[], sightings[], personNote, lessons, demo | incidents by opId |
| `cameras` | name, type, street, lon, lat, dir, fov, range, owner, contact, retention, demo | cases via canvass |
| `patrols` | start, end, area, zone {lon, lat, r, label}, team, notes, demo | zones |
| `stats` | id `q-YYYY-M`, quarter, counts {categoryIndex: n}, source, demo | quarters |
| `contacts` | org, role, phone, notes | |
| `config/settings` | areas[], sources[] {name, type, rel}, roles[], nr {m, days}, retention | |
| `audit` (web app) | at, uid, action, path | append only |

## Out of scope

Names of private people, numbers that identify people or vehicles, footage, photos ([[specs/privacy-and-evidence]]).

## Data

Incident types, statuses and the glossary: [[concepts/Glossary]]. Grading: [[concepts/Source-grading]].

## Acceptance criteria

- The artifact JSON backup imports without loss into one organisation ([[runbooks/migrate-artifact-data]]).
- Every field above has a schema with allowed values and lengths.

## Open questions

- Arrays inside `cases` and `ops` keep each document small today; split into subcollections if a document nears 1 MiB (UNVERIFIED Firestore document limit, check before M3).
