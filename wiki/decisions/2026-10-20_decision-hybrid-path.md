---
type: decision
id: hybrid-path
title: Hybrid path: artifact proof of concept, then a web app
summary: Prove the workflow in a Claude artifact first, then move the same data model to a web app.
date: 2026-10-20
decider: Franco Megannon
status: active
last_updated: 2026-10-20
---

# Hybrid path: artifact proof of concept, then a web app

## Decision

Build the proof of concept as a Claude artifact. Move to a standalone web app once it is used, carrying the data across with the JSON backup.

## Context

Franco chose "Hybrid" on 2026-10-20 from three options: artifact, web app, or hybrid.

## Rationale

The artifact costs nothing and ships in hours; the web app is needed for users without Claude accounts, GPS, push and data residency ([[research/2026-10-20_research_artifact-platform-limits]]).

## Consequences

The artifact and the web app share one data model ([[specs/data-model]]). The web app backend is set by [[decisions/2026-10-20_decision-firebase-backend]].

## Alternatives considered

| Alternative | Why not chosen |
|---|---|
| Artifact only | Cannot serve role players or residents |
| Web app first | Weeks before the coordinator sees anything |

## Related

[[specs/artifact-poc]] · [[specs/roadmap]]
