---
type: report
title: M0 to M2 build run on the Mac Mini
summary: What the first Mini build run produced on branch m0-m2: tickets WW-01 to WW-16, tests, defaults taken and what still needs Franco.
status: active
last_updated: 2026-10-20
---

# M0 to M2 build run on the Mac Mini

## What was asked

Build tickets WW-01 to WW-16 of the Firebase build plan in order on branch `m0-m2` of `MegannonBot/WaveWatch-App`, against the Firebase emulator only, from the brief in `outputs/technology/2026-10-20_firebase-m0-m2/`, while Franco was away.

## What was done

- All 16 tickets worked in order, one or two commits each, all pushed to `m0-m2`. 15 done, WW-12 partly done. Evidence: `docs/progress.md` and `docs/reports/2026-10-20_m0-m2-handover.md` on that branch.
- The app runs as an installable web app: sign-in, organisations with invitations and the four roles, security rules, typed data layer, audit log, offline logging with a sync chip, quick log and full incident form with the privacy guard, map of incidents, reports feed with WhatsApp paste and on-device redaction, contacts, settings.
- Tests on the Mini, final run 2026-10-20: 215 unit, 234 rules, 33 end-to-end, 5 production-build (offline and performance); all passed. Lighthouse 11 installability check passed. Source: test output recorded in the handover, section 3.
- Reference data (types, statuses, areas, sources, presets, defaults) is tested equal to the artifact source ([[specs/artifact-poc]]).
- Screenshots at 390 px in `docs/screenshots/` on the branch, with seeded fake data.

## Needs a decision

1. The six proposals in [[specs/firebase-architecture]]: the run built on them as defaults ([[decisions/2026-10-20_decision-web-stack]], [[decisions/2026-10-20_decision-org-scoped-data]], [[decisions/2026-10-20_decision-roles]], [[decisions/2026-10-20_decision-sign-in-methods]], [[decisions/2026-10-20_decision-blaze-at-m6]], [[decisions/2026-10-20_decision-identity-boundary]]).
2. Fifteen smaller defaults taken during the run, listed in the handover, section 5. The ones that touch privacy or security: joining needs a verified email; members store their email; deletes must write an audit entry in the same batch; the guard adds house-number and title-plus-name warnings.
3. Node version on the Mini and laptop: the run pinned versions that work on Node 20 (the Mini has Node 20.20.2, verified with `node -v`).

## Not done

- WW-12: the 20-second quick log check on a real phone with a person; a scripted run took 0.4 s.
- Real Google sign-in, which needs a Google OAuth client in a real Firebase project (WW-32).
- Smoothness on a real mid-range phone; checked only in headless Chrome with 4x CPU slowdown.
- The CI workflow has never run on GitHub (manual trigger only, by design).
- WhatsApp `.zip` exports (`.txt` and paste work).

## For Cowork

- **STATE, Project, Stage:** replace "Firebase build not started" with: M0 to M2 built on branch `m0-m2` (15 of 16 tickets done, WW-12 partly done), not merged to `main`, not deployed. Source: this report.
- **STATE, Vault and tooling, Builder:** add that the first Mini run finished 2026-10-20.
- **STATE, Needs Franco:** add (a) try the build on the laptop with the three commands in the handover, section 1; (b) time a quick log on a phone; (c) confirm or change the fifteen run defaults in the handover, section 5; (d) whether to merge `m0-m2` into `main`.
- **STATE, Needs Franco 1:** first-time setup is done on the Mini (the run cloned, pulled and pushed both repositories).
- **Log:** one entry, `[2026-10-20] build | M0 to M2 run on the Mini`, pointing here.
- **Glossary:** add "Quick log" (the short incident form: type, place, time, optional line) and "Sync chip" (the header status: Saved, Saving, Offline with the number waiting), both now used in the app.
- **Mistakes register candidates (need Franco's yes):** committing before the whole test suite had passed (happened twice, fixed in the next commit each time); long test runs against one emulator degraded it until a restart.
