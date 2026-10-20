---
paths:
  - "wiki/**/*.md"
---

# Rules when touching wiki pages

- Frontmatter first: `type`, `title`, `summary`, `status`, `last_updated`. Set `last_updated` to today on every edit.
- Grep before writing a fact. One fact, one home.
- A present-tense claim carries its proof or the word UNVERIFIED.
- `wiki/index.md` is generated. Change frontmatter, then run `python3 tools/wiki_build.py`.
- Sections by type:
  - decision: Decision, Context, Rationale, Consequences, Alternatives considered, Related
  - spec: Purpose, In scope, Out of scope, Data, Acceptance criteria, Open questions
  - entity: Summary, Key facts (each with a date and source), Relationship to WaveWatch, Open questions
  - concept: Definition, Why it matters, How WaveWatch uses it, Sources
  - research: Summary, Findings, What it means for us, Not checked
  - runbook: When to use, Steps, Checks, If it goes wrong
  - report: What was asked, What was done, Needs a decision (first, empty if none), Not done
- Entity pages hold dated facts, not narrative. Entity pages exist for organisations and for Franco and the coordinator only, never for private residents or suspects.
