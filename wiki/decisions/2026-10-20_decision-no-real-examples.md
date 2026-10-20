---
type: decision
id: no-real-examples
title: Real WhatsApp examples are never used in demo data or specs
summary: Incidents Franco shared as examples are not used in demo data, specs or tests.
date: 2026-10-20
decider: Franco Megannon
status: active
last_updated: 2026-10-20
---

# Real WhatsApp examples are never used in demo data or specs

## Decision

Real incidents shared from WhatsApp groups inform the design only. They are never copied into demo data, specs, tickets, tests or the vault.

## Context

Franco, 2026-10-20: "We dont use any info from the examples I gave you." The spec had named streets, organisations and residents from the examples; they were removed the same day.

## Rationale

Protects the people involved and keeps the demo safe to show.

## Consequences

Demo data is generated and marked DEMO ([[specs/artifact-poc]]). Privacy rule in `.claude/rules/privacy.md`.

## Alternatives considered

| Alternative | Why not chosen |
|---|---|
| Use anonymised examples | Even anonymised, the combination of street, time and event can identify a household |

## Related

[[specs/privacy-and-evidence]]
