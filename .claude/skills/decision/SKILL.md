---
name: decision
description: Record a decision or a proposal as an ADR page in wiki/decisions. Use when Franco rules on something, or when Claude makes a recommendation that awaits his ruling.
---

# Write a decision page

1. Grep `wiki/decisions/` for the topic. If a page exists and the ruling changes it, this is a supersession (step 5), not an edit.
2. Create `wiki/decisions/YYYY-MM-DD_decision-<slug>.md` with this frontmatter:

```
---
type: decision
id: <slug>
title: <short title>
summary: <one plain sentence stating the decision>
date: YYYY-MM-DD
decider: Franco Megannon        (or: pending)
status: active                  (or: proposed)
last_updated: YYYY-MM-DD
---
```

3. Sections: Decision, Context, Rationale, Consequences, Alternatives considered, Related.
4. `decider: Franco Megannon` and `status: active` only when Franco said it, on the date given. Quote his words in Context where possible. A recommendation from Claude is `decider: pending`, `status: proposed`, and its Decision section starts with "Proposed:".
5. Supersession: add `supersedes: <old id>` to the new page; on the old page set `superseded_by: <new id>` and `status: superseded`. Do not change the old page's Decision or Rationale text.
6. When Franco approves a proposal unchanged, change `decider`, `status` and `date` on that page and note the approval date in Context. When he changes it, write a new page that supersedes it.
7. Update any STATE row that pointed at the old position, then run the build and lint.
