---
type: spec
title: Security model
summary: Who can read and write what in the Firebase web app, and how the rules are tested.
status: active
last_updated: 2026-10-21
---

# Security model

## Purpose

Least access by default for a data set that contains alleged criminal behaviour and, during operations, health and missing-person details.

## In scope

Role matrix ([[decisions/2026-10-20_decision-roles]], approved 2026-10-21):

| Collection | coordinator | analyst | responder | viewer |
|---|---|---|---|---|
| incidents | read, write, delete | read, write | create only | none |
| reports | read, write, delete | read, write | create only | none |
| cases | read, write, delete | read, write | none | none |
| ops | read, write, delete | read, write | read and update responders and timeline of ops where listed | none |
| cameras, patrols, stats, contacts | read, write, delete | read, write | read contacts | none |
| config/settings, members | read, write | read | read settings | none |
| briefs (published) | read, write | read, write | read | read |
| audit | read | none | none | none |

Rules deny by default. Every write checks membership in `orgs/{orgId}/members/{uid}`, field types, allowed values and maximum lengths. Deletes are coordinator only and written to `audit`.

## Out of scope

Server-side access by Functions (Admin SDK) is reviewed at M6.

## Data

[[specs/data-model]].

## Acceptance criteria

- A rules test suite runs on the emulator with a case per role per collection, allowed and refused.
- A user of one organisation cannot read another organisation's data (test).
- A responder cannot read cases or incident free text outside their operation (test).

## Open questions

- Sign-in methods ([[decisions/2026-10-20_decision-sign-in-methods]]).
