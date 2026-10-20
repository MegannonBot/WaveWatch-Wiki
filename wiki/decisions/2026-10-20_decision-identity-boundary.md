---
type: decision
id: identity-boundary
title: Events and descriptions, never identities
summary: WaveWatch records events and descriptions of unidentified people, never identities.
date: 2026-10-20
decider: pending
status: proposed
last_updated: 2026-10-20
---

# Events and descriptions, never identities

## Decision

Proposed: No suspect register with names, no registration-number watchlist, no face matching, no social media profiling. People described by behaviour, clothing and build only. Footage stays with its owner. Identified people go to SAPS.

## Context

Claude set this boundary from the first answer on 2026-10-20 and built every version to it. Franco has not ruled on it explicitly; he asked for a focus on "suspect people in an area".

## Rationale

POPIA section 26 treats alleged criminal behaviour as special personal information ([[research/2026-10-20_research_popia-and-evidence]]); vigilantism and defamation risk for the coordinator.

## Consequences

Bound into `.claude/rules/privacy.md`, the specs and the artifact.

## Alternatives considered

| Alternative | Why not chosen |
|---|---|
| Named suspect list | POPIA risk and safety risk |
| Plate watchlist | Belongs with operators that have a lawful basis |

## Related

[[specs/privacy-and-evidence]]
