---
type: decision
id: firebase-backend
title: Firebase is the backend for the web app
summary: The standalone WaveWatch web app is built on Firebase.
date: 2026-10-20
decider: Franco Megannon
status: active
last_updated: 2026-10-20
---

# Firebase is the backend for the web app

## Decision

The non-artifact version of WaveWatch is built on Firebase. Region, plan, stack and sign-in methods are separate proposals.

## Context

Franco, 2026-10-20: "start with the formal work of building this to the firebase version that isnt the artifact version". The build spec doc had proposed Supabase; that was a recommendation, never ruled, so this is not a supersession.

## Rationale

Franco already runs Skiet Goed on Firebase with the emulator workflow on the Mac Mini, so tooling, skills and habits carry over. Firestore and Cloud Functions (2nd gen) are available in Johannesburg, `africa-south1` ([[research/2026-10-20_research_firebase-facts]]).

## Consequences

Architecture in [[specs/firebase-architecture]], data in [[specs/data-model]], rules in [[specs/security-model]], plan in `outputs/product/2026-10-20_firebase-build-plan/`. The spec doc's Supabase rows are outdated on this point.

## Alternatives considered

| Alternative | Why not chosen |
|---|---|
| Supabase | Proposed earlier; Franco chose Firebase |
| Stay in the artifact | Cannot serve people without Claude accounts |

## Related

[[specs/firebase-architecture]] · [[decisions/2026-10-20_decision-web-stack]] · [[decisions/2026-10-20_decision-blaze-at-m6]]
