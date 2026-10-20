#!/usr/bin/env python3
"""Lint the WaveWatch vault. Fails loudly: exit 1 on any error.

Checks
  1. Frontmatter present with required fields, valid type and status.
  2. Extra required fields per type (decision, research).
  3. Dead wikilinks.
  4. Decision supersession chains resolve in both directions.
  5. Caps: CLAUDE.md 200 lines, STATE.md 80 lines, log.md 2000 lines, mistakes 20 rows.
  6. No em dashes anywhere in tracked text files.
  7. No spaces in filenames under wiki/.
  8. wiki/index.md matches what tools/wiki_build.py would generate.
  9. STATE.md last_updated older than 14 days (warning).
 10. Orphan pages: nothing links to them (warning).

Usage: python3 tools/wiki_lint.py
"""
import datetime
import os
import re
import subprocess
import sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
WIKI = os.path.join(ROOT, "wiki")
EM_DASH = chr(0x2014)

TYPES = {"state", "log", "mistakes", "index", "decision", "spec", "entity",
         "concept", "research", "runbook", "report"}
STATUSES = {"active", "proposed", "draft", "done", "superseded", "archived"}
REQUIRED = ["type", "title", "summary", "status", "last_updated"]
EXTRA = {
    "decision": ["id", "date", "decider"],
    "research": ["origin", "date_retrieved"],
}
CAPS = [("CLAUDE.md", 200), ("wiki/STATE.md", 80), ("wiki/log.md", 2000)]
TEXT_EXT = (".md", ".py", ".json", ".txt", ".yml", ".yaml")

errors, warnings = [], []


def read(path):
    with open(path, encoding="utf-8") as fh:
        return fh.read()


def frontmatter(text):
    lines = text.split("\n")
    if not lines or lines[0].strip() != "---":
        return None
    meta = {}
    for line in lines[1:]:
        if line.strip() == "---":
            return meta
        if ":" in line:
            key, _, value = line.partition(":")
            meta[key.strip()] = value.strip().strip('"')
    return None


def wiki_pages():
    out = {}
    for dirpath, dirnames, filenames in os.walk(WIKI):
        dirnames[:] = [d for d in dirnames if not d.startswith(".")]
        for name in filenames:
            if name.endswith(".md"):
                full = os.path.join(dirpath, name)
                rel = os.path.relpath(full, WIKI).replace(os.sep, "/")[:-3]
                out[rel] = full
    return out


def resolve(target, pages, basenames):
    target = target.split("|")[0].split("#")[0].strip()
    if target.endswith(".md"):
        target = target[:-3]
    if target in pages:
        return target
    hits = basenames.get(target.split("/")[-1], [])
    if "/" not in target and len(hits) == 1:
        return hits[0]
    return None


def main():
    pages = wiki_pages()
    basenames = {}
    for rel in pages:
        basenames.setdefault(rel.split("/")[-1], []).append(rel)

    metas, inbound = {}, {rel: 0 for rel in pages}
    link_re = re.compile(r"\[\[([^\]]+)\]\]")

    for rel, full in sorted(pages.items()):
        text = read(full)
        if " " in os.path.basename(full):
            errors.append(rel + ": filename contains a space")
        meta = frontmatter(text)
        if meta is None:
            errors.append(rel + ": missing or unterminated frontmatter")
            meta = {}
        metas[rel] = meta
        for field in REQUIRED:
            if not meta.get(field):
                errors.append(rel + ": frontmatter missing '" + field + "'")
        ptype = meta.get("type", "")
        if ptype and ptype not in TYPES:
            errors.append(rel + ": unknown type '" + ptype + "'")
        if meta.get("status") and meta["status"] not in STATUSES:
            errors.append(rel + ": unknown status '" + meta["status"] + "'")
        for field in EXTRA.get(ptype, []):
            if not meta.get(field):
                errors.append(rel + ": " + ptype + " page missing '" + field + "'")
        if ptype == "decision":
            if meta.get("status") == "active" and meta.get("decider") != "Franco Megannon":
                errors.append(rel + ": an active decision must name decider: Franco Megannon")
            if meta.get("status") == "proposed" and meta.get("decider") != "pending":
                errors.append(rel + ": a proposal must carry decider: pending")

        body = re.sub(r"```.*?```", "", text, flags=re.S)
        body = re.sub(r"`[^`\n]*`", "", body)
        for match in link_re.finditer(body):
            hit = resolve(match.group(1), pages, basenames)
            if hit is None:
                errors.append(rel + ": dead wikilink [[" + match.group(1) + "]]")
            elif hit != rel:
                inbound[hit] += 1

    # CLAUDE.md links count too
    claude = os.path.join(ROOT, "CLAUDE.md")
    if os.path.exists(claude):
        body = re.sub(r"```.*?```", "", read(claude), flags=re.S)
        body = re.sub(r"`[^`\n]*`", "", body)
        for match in link_re.finditer(body):
            hit = resolve(match.group(1), pages, basenames)
            if hit is None:
                errors.append("CLAUDE.md: dead wikilink [[" + match.group(1) + "]]")
            else:
                inbound[hit] += 1

    # supersession chains
    ids = {m.get("id"): rel for rel, m in metas.items() if m.get("type") == "decision" and m.get("id")}
    for rel, m in metas.items():
        if m.get("type") != "decision":
            continue
        sup = m.get("supersedes")
        if sup:
            if sup not in ids:
                errors.append(rel + ": supersedes '" + sup + "' which is not a decision id")
            else:
                old = metas[ids[sup]]
                if old.get("superseded_by") != m.get("id") or old.get("status") != "superseded":
                    errors.append(ids[sup] + ": must carry superseded_by: " + str(m.get("id")) + " and status: superseded")
        by = m.get("superseded_by")
        if by and by not in ids:
            errors.append(rel + ": superseded_by '" + by + "' which is not a decision id")

    # caps
    for path, cap in CAPS:
        full = os.path.join(ROOT, path)
        if os.path.exists(full):
            n = len(read(full).rstrip("\n").split("\n"))
            if n > cap:
                errors.append(path + ": " + str(n) + " lines, cap is " + str(cap))
    mistakes = os.path.join(WIKI, "mistakes.md")
    if os.path.exists(mistakes):
        rows = len(re.findall(r"^\| *M-\d+", read(mistakes), flags=re.M))
        if rows > 20:
            errors.append("wiki/mistakes.md: " + str(rows) + " rows, cap is 20")

    # em dashes
    for dirpath, dirnames, filenames in os.walk(ROOT):
        dirnames[:] = [d for d in dirnames if d not in (".git", ".obsidian", "__pycache__", "raw", "outputs")]
        for name in filenames:
            if name.endswith(TEXT_EXT):
                full = os.path.join(dirpath, name)
                for i, line in enumerate(read(full).split("\n"), 1):
                    if EM_DASH in line:
                        errors.append(os.path.relpath(full, ROOT) + ":" + str(i) + ": em dash")

    # index freshness
    result = subprocess.run([sys.executable, os.path.join(ROOT, "tools", "wiki_build.py"), "--check"],
                            capture_output=True, text=True)
    if result.returncode != 0:
        errors.append("wiki/index.md is out of date. Run: python3 tools/wiki_build.py")

    # state freshness
    last = metas.get("STATE", {}).get("last_updated", "")
    try:
        age = (datetime.date.today() - datetime.date.fromisoformat(last)).days
        if age > 14:
            warnings.append("STATE.md last_updated is " + str(age) + " days old")
    except ValueError:
        pass

    # orphans
    exempt = {"STATE", "log", "mistakes", "index"}
    for rel, n in sorted(inbound.items()):
        if n == 0 and rel not in exempt:
            warnings.append(rel + ": orphan (no page links to it)")

    for w in warnings:
        print("WARN  " + w)
    for e in errors:
        print("ERROR " + e)
    print(str(len(pages)) + " pages, " + str(len(errors)) + " errors, " + str(len(warnings)) + " warnings")
    sys.exit(1 if errors else 0)


if __name__ == "__main__":
    main()
