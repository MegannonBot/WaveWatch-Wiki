---
type: decision
id: web-stack-offline-not-required
title: Web stack without an offline requirement
summary: The web stack stays as approved, but working offline is no longer a requirement; the offline saving already built stays and nothing more is designed or built for it.
date: 2026-10-21
decider: Franco Megannon
status: active
supersedes: web-stack
last_updated: 2026-10-21
---

# Web stack without an offline requirement

## Decision

React and TypeScript on Vite, installable as a web app (PWA); MapLibre GL for the map using the existing OpenStreetMap extract; Firebase modular SDK; Vitest and the Firebase rules test library; Playwright for end-to-end; development and tests against the Firebase emulator with project id `demo-wavewatch`.

Working offline is not a requirement. The offline saving and sync chip already built in WW-11 stay as they are. No offline screens are designed and no further offline work is built or tested for.

## Context

Franco, 2026-10-21, choosing the design direction: "Please note, offline is not a requirement". Asked how far that goes, he chose "Drop the requirement" over "Design only" and "Remove it from the app". This replaces the "with offline capture" part of [[decisions/2026-10-20_decision-web-stack]], approved earlier the same day.

## Rationale

Franco's ruling. Keeping what is built costs nothing; removing it would be extra work and would let a dropped signal lose an unsaved log.

## Consequences

- The airplane-mode acceptance criterion is removed from [[specs/firebase-architecture]].
- The existing offline tests may stay; a future change may remove them if they get in the way, without a new ruling.

## Alternatives considered

| Alternative | Why not chosen |
|---|---|
| Offline left out of the design run only, still a product requirement | Not chosen by Franco |
| Remove the built offline saving | Not chosen by Franco |

## Related

[[decisions/2026-10-20_decision-web-stack]] · [[specs/firebase-architecture]] · [[decisions/2026-10-21_decision-design-direction-watch]]
