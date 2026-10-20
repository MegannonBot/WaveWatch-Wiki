---
type: runbook
title: Move data from the artifact to the web app
summary: How the artifact JSON backup is imported into a Firebase organisation.
status: active
last_updated: 2026-10-20
---

# Move data from the artifact to the web app

## When to use

Once the web app beta project exists (milestone M5, ticket WW-28).

## Steps

1. In the artifact: More, Data, Backup (.json). Save the file.
2. Remove demo records first, or tick "skip demo" in the import screen.
3. In the web app as coordinator: Settings, Import backup, choose the file, review counts per collection, confirm.
4. The import writes every record under `orgs/{orgId}/` with its original id, and writes one audit entry.
5. Spot-check five incidents, one case and one operation against the artifact.

## Checks

Counts match per collection; references (caseId, opId, report links) resolve.

## If it goes wrong

Re-running skips ids that already exist; nothing is overwritten.
