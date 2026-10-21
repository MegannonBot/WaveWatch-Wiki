---
type: decision
id: hannes-starts-on-web-app
title: Hannes starts on the web app, not the artifact
summary: The artifact stays a demo and behaviour reference; Hannes gets a link to the web app when it is ready.
date: 2026-10-21
decider: Franco Megannon
status: active
supersedes: hybrid-path
last_updated: 2026-10-21
---

# Hannes starts on the web app, not the artifact

## Decision

Hannes is not invited to the artifact. He gets a link to the web app when it is ready for him. The artifact stays as the demo and the behaviour reference for the build.

## Context

On 2026-10-21 Claude recommended that Hannes use the artifact until the web app beta. Franco answered: "We can send him a link when we are done". This replaces the proof of concept step of [[decisions/2026-10-20_decision-hybrid-path]], where the artifact was to be used first.

## Rationale

Franco did not give a reason beyond the answer above.

## Consequences

- The roadmap's proof of concept gate (weekly use of the artifact for 4 weeks) falls away; weekly use is measured on the web app at Gate 1 ([[specs/roadmap]]).
- The data model stays shared, so the artifact backup import ([[runbooks/migrate-artifact-data]]) still works, but it is only needed if the artifact holds data worth keeping (UNVERIFIED).
- The 8-page user guide in `outputs/product/2026-10-20_user-guide/` describes the artifact, not the web app.

## Alternatives considered

| Alternative | Why not chosen |
|---|---|
| Hannes uses the artifact until the web app beta | Not chosen by Franco |

## Related

[[decisions/2026-10-20_decision-hybrid-path]] · [[specs/roadmap]] · [[entities/Hannes]]
