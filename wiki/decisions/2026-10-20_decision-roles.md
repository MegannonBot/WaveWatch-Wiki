---
type: decision
id: roles
title: Four roles: coordinator, analyst, responder, viewer
summary: Users hold one of four roles that set what they can read and write.
date: 2026-10-21
decider: Franco Megannon
status: active
last_updated: 2026-10-21
---

# Four roles: coordinator, analyst, responder, viewer

## Decision

Coordinator (everything, including members and deletion), analyst (all records, no member management, no deletion), responder (reports, and active operations they are added to), viewer (briefs and published bulletins only).

## Context

Approved unchanged by Franco on 2026-10-21 ("Approve").

The coordinator works alone first; committee members, street leaders and role players follow.

## Rationale

Least access by default; role players never see case detail.

## Consequences

Rules and tests per role in [[specs/security-model]].

## Alternatives considered

| Alternative | Why not chosen |
|---|---|
| Everyone sees everything | Exposes case detail to role players |

## Related

[[specs/security-model]]
