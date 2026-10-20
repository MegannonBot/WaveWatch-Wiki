---
type: research
title: Firebase facts that shape the build
summary: Region, plan and sign-in facts for Firebase as read from Firebase documentation.
status: active
origin: firebase.google.com/docs
date_retrieved: 2026-10-20
last_updated: 2026-10-20
---

# Firebase facts that shape the build

## Summary

Read from the providers' own pages on 2026-10-20.

## Findings

| Fact | Source |
|---|---|
| Firestore offers `africa-south1` (Johannesburg) | https://firebase.google.com/docs/firestore/pipelines/locations |
| Cloud Functions in `africa-south1`: 2nd gen only | https://firebase.google.com/docs/functions/locations |
| Cloud Functions need the Blaze plan | https://firebase.google.com/docs/projects/billing/firebase-pricing-plans |
| Spark example: 50,000 Firestore reads and 20,000 writes a day at no cost | same |
| Phone sign-in SMS: Blaze only; 3,000 SMS a day standard | https://firebase.google.com/docs/auth/limits |
| Email link sign-in: 5 emails a day on Spark, 25,000 on Blaze | same |
| Skiet Goed already runs a Firestore database in `africa-south1` on Spark | Skiet Goed vault STATE, read 2026-10-20 |

## What it means for us

Spark is enough until server features. Sign in with email and Google first.

## Not checked

Cloud Storage plan requirements for new projects; Hosting quotas; SMS price for South Africa; where Authentication stores user records.
