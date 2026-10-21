---
type: decision
id: web-stack
title: React, TypeScript and Vite installable web app with the Firebase emulator
summary: Build the web app with React, TypeScript and Vite as an installable web app, developed against the Firebase emulator.
date: 2026-10-21
decider: Franco Megannon
status: active
last_updated: 2026-10-21
---

# React, TypeScript and Vite installable web app with the Firebase emulator

## Decision

React and TypeScript on Vite, installable as a web app (PWA) with offline capture; MapLibre GL for the map using the existing OpenStreetMap extract; Firebase modular SDK; Vitest and the Firebase rules test library; Playwright for end-to-end; development and tests against the Firebase emulator with project id `demo-wavewatch`.

## Context

Approved by Franco on 2026-10-21. He first asked whether WaveWatch should follow the Certech and Skiet Goed platform; after a comparison read from both vaults (Skiet Goed and Certech v1 use Expo on the phone; Skiet Goed shares the Firebase backend) he chose "A: Web app".

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
| Expo, the phone stack of Skiet Goed and Certech v1 | Role players on Android would need an APK and on iPhone the App Store or Apple test programme; a link installs on any phone, and M0 to M2 were already built (Franco, 2026-10-21) |

## Related

[[specs/firebase-architecture]]
