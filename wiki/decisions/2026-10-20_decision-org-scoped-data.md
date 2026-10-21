---
type: decision
id: org-scoped-data
title: All data scoped to an organisation
summary: Every record lives under an organisation, so other communities can be added without mixing data.
date: 2026-10-21
decider: Franco Megannon
status: active
last_updated: 2026-10-21
---

# All data scoped to an organisation

## Decision

Firestore paths start with `orgs/{orgId}/`. Membership and role live in `orgs/{orgId}/members/{uid}`. Jeffreys Bay is the first organisation.

## Context

Approved unchanged by Franco on 2026-10-21 ("Approve").

Phase 4 of the roadmap adds other communities.

## Rationale

Isolation by path is simple to enforce in security rules and to export or delete per organisation.

## Consequences

See [[specs/data-model]] and [[specs/security-model]].

## Alternatives considered

| Alternative | Why not chosen |
|---|---|
| One flat database per community | A new Firebase project per community is heavy to run |

## Related

[[specs/data-model]]
