---
type: decision
id: org-scoped-data
title: All data scoped to an organisation
summary: Every record lives under an organisation, so other communities can be added without mixing data.
date: 2026-10-20
decider: pending
status: proposed
last_updated: 2026-10-20
---

# All data scoped to an organisation

## Decision

Proposed: Firestore paths start with `orgs/{orgId}/`. Membership and role live in `orgs/{orgId}/members/{uid}`. Jeffreys Bay is the first organisation.

## Context

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
