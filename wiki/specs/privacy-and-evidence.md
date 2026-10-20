---
type: spec
title: Privacy and evidence handling
summary: The privacy rules WaveWatch follows and how footage is handled so SAPS can use it.
status: active
last_updated: 2026-10-20
---

# Privacy and evidence handling

## Purpose

Keep WaveWatch lawful under POPIA and useful to SAPS ([[research/2026-10-20_research_popia-and-evidence]]).

## In scope

| Topic | Rule | Basis |
|---|---|---|
| Mandate | Outputs support SAPS; no investigative or enforcement action | SAPS Act s18 if run under a CPF |
| Criminal behaviour | Descriptions only, never identities ([[decisions/2026-10-20_decision-identity-boundary]], proposed) | POPIA s26 |
| Health | "Injured, transported" only | POPIA s26 |
| Missing persons | Details only while the operation is active; removed on close | POPIA s26, minimisation |
| Retention | Default 12 months, purge prompt | POPIA s14 |
| Security | Invitation-only access, audit log, no data in URLs | POPIA s19 |
| Residency | Firestore in `africa-south1` | POPIA s72 (UNVERIFIED whether it applies to the artifact store) |
| Responsible party | The organisation that runs WaveWatch (open: STATE, Needs Franco 3) | POPIA s55 |

## Evidence handling

The platform never stores footage. The handover register records: who holds the original and where; the window exported, when and by whom; a hash or the owner's reference; who at SAPS received it and the CAS number. Courts weigh electronic evidence on how reliably it was generated, stored and kept intact (ECT Act s15).

## Out of scope

Legal advice. Points marked attorney to confirm stay open.

## Data

[[specs/data-model]].

## Acceptance criteria

- Closing an operation clears `personNote` and logs it.
- The bulletin generator names suburbs and time bands only and warns on any street name or number.

## Open questions

- Attorney: POPIA s57 prior authorisation; s27(2) authorisation; privacy notice wording; s72 transfer for the artifact phase.
