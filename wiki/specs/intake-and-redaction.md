---
type: spec
title: Intake and redaction
summary: How messages enter WaveWatch and how personal details are removed before extraction.
status: active
last_updated: 2026-10-20
---

# Intake and redaction

## Purpose

Get reports in with little effort while keeping personal information out ([[specs/privacy-and-evidence]]).

## In scope

1. Parse WhatsApp exports (Android and iPhone formats, .txt or .zip) with a date filter; skip system lines and media placeholders.
2. Replace private senders with "Member N"; keep organisation call signs (control rooms, response units) by name.
3. Remove phone numbers, email addresses, ID numbers, South African registration numbers (old and new formats) and @mentions, on the device, before any text leaves it.
4. Send parts of about 9,000 characters for extraction. Extraction returns items of kind incident or report with type, time window, area, street, method, description, vehicle, quote and confidence.
5. Remove house numbers; check every field again.
6. The coordinator reviews every item; possible duplicates (same type and area within 3 hours) start unticked.
7. Each saved item creates a report; incidents link to their report.

The artifact implements all seven. The patterns live in `RX` in the artifact source ([[specs/artifact-poc]]).

## Out of scope

Reading WhatsApp groups directly (no official way). Forwarding to a WaveWatch WhatsApp Business number is M6.

## Data

`reports` and `incidents` in [[specs/data-model]].

## Acceptance criteria

The unit test set from the artifact test run: senders replaced, phone, ID and plate numbers removed, a system line skipped, a media line skipped.

## Open questions

Names inside message text cannot be detected reliably; the review step is the control.
