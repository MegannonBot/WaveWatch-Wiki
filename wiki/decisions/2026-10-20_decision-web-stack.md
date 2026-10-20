---
type: decision
id: web-stack
title: React, TypeScript and Vite installable web app with the Firebase emulator
summary: Build the web app with React, TypeScript and Vite as an installable web app, developed against the Firebase emulator.
date: 2026-10-20
decider: pending
status: proposed
last_updated: 2026-10-20
---

# React, TypeScript and Vite installable web app with the Firebase emulator

## Decision

Proposed: React and TypeScript on Vite, installable as a web app (PWA) with offline capture; MapLibre GL for the map using the existing OpenStreetMap extract; Firebase modular SDK; Vitest and the Firebase rules test library; Playwright for end-to-end; development and tests against the Firebase emulator with project id `demo-wavewatch`.

## Context

Phone first, but a web app avoids app-store accounts and installs for role players. Skiet Goed uses the emulator-first pattern already.

## Rationale

One codebase for phone and laptop, no store approval, offline support through a service worker. MapLibre draws sectors, routes and camera cones natively.

## Consequences

Milestones M0 to M2 in the build plan assume this stack.

## Alternatives considered

| Alternative | Why not chosen |
|---|---|
| React Native with Expo | Store builds needed for every role player |
| Flutter web | Weaker web output and smaller web ecosystem |

## Related

[[specs/firebase-architecture]]
