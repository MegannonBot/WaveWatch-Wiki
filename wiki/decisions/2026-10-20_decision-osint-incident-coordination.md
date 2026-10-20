---
type: decision
id: osint-incident-coordination
title: OSINT and incident coordination, many sources
summary: WaveWatch is an OSINT platform that takes reports from many sources and links them to incidents, cases and response operations.
date: 2026-10-20
decider: Franco Megannon
status: active
last_updated: 2026-10-20
---

# OSINT and incident coordination, many sources

## Decision

WaveWatch is built as an OSINT platform: every source (WhatsApp groups, security control rooms, cameras and LPR, SAPS statistics, public sources, own observations) feeds one graded record, linked to incidents, cases and response operations. Crime, road safety and emergencies are all in scope.

## Context

Franco, 2026-10-20: "As I started, this should be OSINT based, so it should allow for other info sources to be added as well." The same day he described a road collision with many responders and a missing-person search, both outside crime.

## Rationale

The coordinator's real job is coordinating community safety incidents of every kind. One engine (timeline, responders, map annotations) serves collisions, searches and break-in cases.

## Consequences

Source registry with grading ([[concepts/Source-grading]]), intel feed, cases, camera canvass and operations are core modules ([[specs/product-overview]]).

## Alternatives considered

| Alternative | Why not chosen |
|---|---|
| Crime log only | Missed two of three real incidents in the first week |
| Separate tools per incident kind | Duplicates the same timeline and responder logic |

## Related

[[specs/product-overview]] · [[decisions/2026-10-20_decision-identity-boundary]]
