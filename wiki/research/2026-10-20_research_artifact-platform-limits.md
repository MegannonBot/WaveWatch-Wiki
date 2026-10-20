---
type: research
title: Claude artifact limits for WaveWatch
summary: What a Claude artifact can and cannot do for WaveWatch, from the platform documentation and testing.
status: active
origin: support.claude.com; testing in the founding session
date_retrieved: 2026-10-20
last_updated: 2026-10-20
---

# Claude artifact limits for WaveWatch

## Summary

Read and tested on 2026-10-20.

## Findings

- Invitations by email need Pro, Max, Team or Enterprise; invitees need a Claude account on that address; up to 50 outside invitees; pending invites expire after 30 days. https://support.claude.com/en/articles/16989529-invite-people-outside-your-organization-to-an-artifact
- If the artifact is also shared by link, invitees get link-level access. https://support.claude.com/en/articles/9547008-share-artifacts
- Invitees from outside the organisation cannot use the parts that call Claude or connectors (same page).
- The page cannot load outside map tiles, read GPS, send messages or run offline (artifact page contract, tested).
- Storage up to 25,000 documents per artifact (platform contract).

## What it means for us

Fine for a single-coordinator proof of concept; the web app is needed for role players and residents.

## Not checked

Data location of the artifact store.
