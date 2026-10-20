---
type: report
title: Founding session
summary: What the founding session produced: the artifact proof of concept, the spec, the user guide, the vault and the Firebase plan.
status: active
last_updated: 2026-10-20
---

# Founding session

## What was asked

Franco asked for an OSINT platform for a friend who coordinates community safety in Jeffreys Bay, then for a plan, a map, more features, a demo, a guide, a second brain, and the start of the Firebase build.

## What was done

- Artifact proof of concept, four versions, now WaveWatch v4 ([[specs/artifact-poc]]).
- Jeffreys Bay street map extracted from OpenStreetMap ([[research/2026-10-20_research_osm-map-extract]]).
- Build spec doc in Claude Docs (https://claude.ai/code/artifact/a22b8b8f-1017-471f-8421-5c043c1907fe), later stripped of real examples and renamed.
- User guide PDF ([[decisions/2026-10-20_decision-guide-as-pdf]]).
- This vault, copied from the Skiet Goed shape, with 13 rulings and 6 proposals filed.
- Firebase build plan (37 tickets, milestones M0 to M7) and the first Mini prompt (M0 to M2).

## Needs a decision

The six proposals in [[specs/firebase-architecture]], and STATE Needs Franco 3 (who runs WaveWatch).

## Not done

- Vault not under git (first-time setup pending).
- Home-folder access for creating `~/WaveWatch` was refused by a safety check; Franco created `~/Wavewatch` himself.
- A part-written editable doc "WaveWatch User Guide" (Claude Docs) is left in Franco's files.
- Two helper files (`recv.js`, `test.json`) remain in `~/Documents/JBay-CPF-Desk/map-data/`; deleting needs Franco.

## For the mistakes register (candidates, need Franco's yes)

1. Started building before the plan was agreed; Franco stopped it.
2. Used real WhatsApp examples in the spec; Franco removed them.
