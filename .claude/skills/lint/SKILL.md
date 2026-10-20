---
name: lint
description: Check the WaveWatch vault for dead links, missing frontmatter, broken decision chains, cap breaches, em dashes and a stale index. Use weekly, at session end, or when Franco asks for a vault health check.
---

# Lint the vault

1. Run `python3 tools/wiki_build.py` (regenerates the index).
2. Run `python3 tools/wiki_lint.py`. It exits non-zero on any error.
3. **Mechanical errors: fix without asking.** Frontmatter fields, filename convention, an unambiguous dead link, the index.
4. **Semantic problems: list for Franco, never fix silently.** Two pages that disagree, a stale claim, an unclear decision chain, an UNVERIFIED row older than 30 days.
5. Cap breaches are fixed by moving content to its proper page, never by widening the cap.
6. Orphan warnings: link the page from where it belongs, or propose archiving it.
7. Report to Franco in two lines: errors fixed, items needing his ruling.
