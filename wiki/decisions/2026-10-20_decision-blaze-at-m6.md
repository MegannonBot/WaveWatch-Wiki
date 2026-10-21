---
type: decision
id: blaze-at-m6
title: Move to the Blaze plan only at milestone M6, with a budget alert
summary: Stay on the free Spark plan until server features are needed, then switch to Blaze with a budget alert.
date: 2026-10-21
decider: Franco Megannon
status: active
last_updated: 2026-10-21
---

# Move to the Blaze plan only at milestone M6, with a budget alert

## Decision

Milestones M0 to M5 run on Spark (and the emulator). At M6 (AI extraction, WhatsApp intake, scheduled jobs, phone sign-in) switch to Blaze with a budget alert of R200 a month and the Claude API key in Secret Manager.

## Context

Approved unchanged by Franco on 2026-10-21 ("Approve").

Cloud Functions need Blaze ([[research/2026-10-20_research_firebase-facts]]). Franco asked for near-zero cost.

## Rationale

Defers spend until the features that need it are built.

## Consequences

The AI features of the artifact (extraction, briefs, Ask) are not available in the web app before M6.

## Alternatives considered

| Alternative | Why not chosen |
|---|---|
| Blaze from M0 | Spend before need |

## Related

[[decisions/2026-10-20_decision-near-zero-cost]] · [[specs/roadmap]]
