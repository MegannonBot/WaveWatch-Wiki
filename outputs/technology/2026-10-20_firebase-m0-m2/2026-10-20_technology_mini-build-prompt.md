# WaveWatch: build run M0 to M2 on the Mac Mini

**Read this first.** You are Claude Code on Franco's Mac Mini, opened from Claude Desktop over its SSH connection to the Mini, in `~/wavewatch/WaveWatch-App`, in normal permission mode with a project allow-list (`.claude/settings.local.json`). Franco is away for hours. Commands on the allow-list run without asking; anything else waits for him, so prefer allowed commands and do not stall on a blocked one: record it in `docs/progress.md` as "needs Franco" and move on. Nothing in this project is in production and nothing you do may touch a cloud service. Commit and push after every finished ticket.

## Where things are

- App repository (your working copy): `~/wavewatch/WaveWatch-App`, remote `git@github-wavewatch:MegannonBot/WaveWatch-App.git`. `main` holds only a README.
- Knowledge vault: `~/wavewatch/WaveWatch-Wiki`. Read it all as needed. You may add pages only as `wiki/runbooks/mini-vault-writes.md` allows (your report, decisions, runbooks, research). Never edit STATE, the log, the index, the glossary, `mistakes.md`, `CLAUDE.md` or `.claude/`.
- Read before writing code, in this order:
  1. `WaveWatch-Wiki/CLAUDE.md` and `WaveWatch-Wiki/.claude/rules/` (wiki, privacy, legal-claims). Their rules on privacy, legal wording and em dashes bind your code, copy and reports.
  2. `WaveWatch-Wiki/wiki/STATE.md`.
  3. `WaveWatch-Wiki/wiki/specs/firebase-architecture.md`, `data-model.md`, `security-model.md`, `intake-and-redaction.md`, `privacy-and-evidence.md`.
  4. `WaveWatch-Wiki/outputs/product/2026-10-20_firebase-build-plan/` (the plan and `...issues.json`). This run: WW-01 to WW-16.
  5. The artifact source, which is the behaviour and wording reference: `WaveWatch-Wiki/outputs/product/2026-10-20_artifact-poc/2026-10-20_product_wavewatch-artifact-v4.html`. Port logic from it (types, statuses, redaction patterns `RX`, near-repeat, map projection) rather than reinventing it. Keep its words for labels.
  6. The map data: `WaveWatch-Wiki/raw/2026-10-20_osm-jeffreys-bay-extract.json`. Copy it into the app; never edit the original.
  7. Library documentation for the versions in `package.json`, never your memory (Firebase modular SDK, MapLibre GL, Vite, vite-plugin-pwa, Zod).

## Hard limits

1. **No cloud.** Do not create, change or delete any Firebase or Google Cloud project, do not log in to Firebase, do not deploy. All backend work runs against the Firebase emulator with project id `demo-wavewatch`, which needs no login.
2. **Long-running processes run in tmux, never as a Claude Code background task**: `tmux new -d -s emu-ww '<command> > ~/wavewatch/logs/emu-ww.log 2>&1'` for the emulator, `tmux new -d -s dev-ww ...` for the dev server, then poll the log with `tail`.
3. **Leave other projects alone.** Do not touch `~/certech`, `~/skietgoed`, their tmux sessions, launchd jobs, emulators or ports. Use emulator ports that do not clash: Auth 9199, Firestore 8180, UI 4100 (set in `firebase.json`). If a port is in use, pick another and record it.
4. **Git:** push only with the explicit branch name (`git push -u origin m0-m2`, `git push origin m0-m2`). Never push `main`, never force-push, never rewrite pushed history. Never commit `.env`, keys or real data.
5. **Privacy:** the app records descriptions, never identities. No real people, places of residence, phone numbers, plates or WhatsApp content in code, fixtures, seeds, tests or screenshots. Fixtures are invented and marked `demo: true`.
6. **Legal wording:** the app supports SAPS and gives no legal advice. Do not invent legal facts; mark anything not in the specs UNVERIFIED.
7. **No em dashes** in code comments, strings, commit messages or reports.
8. **Secrets:** none are needed for this run. `.env` is not readable to you; write `.env.example` only.

## The run

1. Create branch `m0-m2` from `main` and push it.
2. **Proposals not yet ruled by Franco: build on them as defaults and list each in the handover as "taken on Franco's behalf, to confirm":** web stack, org-scoped data, four roles, sign-in methods, Blaze at M6, identity boundary (the six `status: proposed` pages in `wiki/decisions/`). Default organisation id for seeds: `demo-jbay`.
3. Work WW-01 to WW-16 **in order**. For each ticket:
   - Meet its acceptance criteria, or record exactly which are not met and why.
   - Add tests: schemas, rules (every role, every collection), redaction, map conversion, near-repeat. Run typecheck, lint, unit tests and rules tests before committing.
   - Commit with a message starting with the ticket id, for example `WW-08: security rules v1 with tests`, and push.
   - Update `docs/progress.md`: one row per ticket with status (done, partly done, skipped, needs Franco), the commit, and anything left.
4. **Skip, and record as skipped:** nothing in WW-03 runs on push (manual trigger only). Any step that needs a real Firebase project, a Google OAuth client or a paid service.
5. If a ticket is blocked, record what blocks it and go to the next ticket that does not depend on it.
6. Every two or three tickets, and before any risky step, make sure everything is pushed.
7. At the end, take Playwright screenshots at 390 px width of the sign-in, map, quick log, full incident form, reports feed and settings screens, using seeded fake data, into `docs/screenshots/`.

## Handover (always write this, even if you stop early)

`docs/reports/<today>_m0-m2-handover.md` on `m0-m2`, pushed, in plain English, shortest first:

1. **What Franco can try first**: the exact commands to run the emulator, seed and dev server on the laptop, in three lines.
2. Tickets done, partly done, skipped, blocked and needs-Franco, as a table with commits.
3. Test counts: unit, rules, end-to-end; pass and fail.
4. Every command that waited for permission, so the allow-list can be adjusted.
5. Defaults taken on his behalf.
6. Anything that went wrong, quoted from the log, without guessing at causes.

Then add your vault report as `wiki/reports/<today>_report_m0-m2-run.md` following `wiki/runbooks/mini-vault-writes.md`, with the "For Cowork" section, and push the vault. Then stop.
