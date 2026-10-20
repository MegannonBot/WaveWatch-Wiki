---
type: spec
title: Artifact proof of concept
summary: What the WaveWatch artifact is, where its source lives, what it can and cannot do, and how it maps to the web app.
status: active
last_updated: 2026-10-20
---

# Artifact proof of concept

## Purpose

Show the coordinator what is possible at R0 ([[decisions/2026-10-20_decision-hybrid-path]], [[decisions/2026-10-20_decision-artifact-demo-build]]), and be the behaviour reference for the web app.

## In scope

- Live at https://claude.ai/artifact/6m2Fk9ZfzmGqPiGpQFTttJ, version 4 published 2026-10-20.
- Source: `outputs/product/2026-10-20_artifact-poc/2026-10-20_product_wavewatch-artifact-v4.html` (one self-contained file, about 375 KB, map data embedded).
- Storage: the artifact's private document store, collections `incidents`, `reports`, `cases`, `ops`, `cameras`, `contacts`, `patrols`, `stats`, and the document `config/settings`. Access rule: read and write need Contributor level or above; view-only users see nothing (tested 2026-10-20 with a probe write at both levels).
- Capabilities declared: storage, user (profile), AI sampling, downloads, room (topic `status` open to Contributors), comments (composer only).
- Demo data: about 150 generated records marked DEMO, removable in one tap.
- Backup format: JSON with `app: "wavewatch"`, `version: 2`, one array per collection plus `settings`. Older id `jbay-cpf-desk` is accepted.

## Out of scope

Users without Claude accounts, GPS, push or WhatsApp sending, offline use, satellite imagery, data in South Africa ([[research/2026-10-20_research_artifact-platform-limits]]).

## Data

Same shape as [[specs/data-model]] without the `orgs/{{orgId}}` prefix.

## Acceptance criteria

Tested locally in a headless browser at 390 to 400 px width on 2026-10-20: no script errors, no sideways scroll, demo load of all collections, generators for case pack, footage request, after-action report, monthly report and bulletin produce correct text. AI features, live viewers and comments are untested (they need Claude).

## Open questions

- Sharing is "Anyone with the link"; Franco to switch to private (STATE, Needs Franco 4).
- Invitees from outside Franco's organisation cannot use AI, live viewers or comments.
