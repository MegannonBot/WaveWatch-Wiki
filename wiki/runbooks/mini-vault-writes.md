---
type: runbook
title: How a Mini session writes to the vault
summary: The steps a Claude Code session on the Mac Mini follows to add its pages to the vault without touching the shared pages.
status: active
last_updated: 2026-10-20
---

# How a Mini session writes to the vault

## When to use

Every Claude Code session on the Mini that produced results, rulings or procedures.

## Steps

1. **At the start:** `git -C ~/wavewatch/WaveWatch-Wiki pull --rebase`. Read `CLAUDE.md` and `wiki/STATE.md`.
2. **For each ruling Franco gives:** add `wiki/decisions/YYYY-MM-DD_decision-<slug>.md` with `decider: Franco Megannon` and his words with the date. For your own recommendations: `decider: pending`, `status: proposed`.
3. **At the end:** add `wiki/reports/YYYY-MM-DD_report_<slug>.md` with What was asked, What was done, Needs a decision, Not done, and a last section **"For Cowork"**: what should change in STATE, the log and the glossary.
4. **Runbooks and research:** new procedures in `wiki/runbooks/`, source summaries in `wiki/research/` with `origin` and `date_retrieved`.
5. **Check:** no em dashes; wikilinks only to pages that exist; `python3 tools/wiki_lint.py` (ignore only "index.md is out of date").
6. **Save:** pull `--rebase`; add your new files only; commit; `git -C ~/wavewatch/WaveWatch-Wiki push origin main`.

## Checks

- Never edit STATE, the log, the index, the glossary, `mistakes.md`, `CLAUDE.md` or `.claude/`.
- Never force-push.
- No personal details, secrets or real incident examples in any page.

## If it goes wrong

A rebase conflict: stop, leave the files, tell Franco.
