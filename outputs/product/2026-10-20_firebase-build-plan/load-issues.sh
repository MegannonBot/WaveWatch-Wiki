#!/usr/bin/env bash
# Loads the Firebase build tickets into the WaveWatch-App repository as GitHub Issues.
# Run once, after Franco approves the plan.
# Needs: GitHub CLI (gh) signed in as MegannonBot, and python3.
set -euo pipefail

REPO="MegannonBot/WaveWatch-App"
HERE="$(cd "$(dirname "$0")" && pwd)"
JSON="$HERE/2026-10-20_product_firebase-issues.json"

who="$(gh api user --jq .login)"
if [ "$who" != "MegannonBot" ]; then
  echo "Signed in to GitHub as '$who', not MegannonBot. Stopping." >&2
  exit 1
fi

existing="$(gh issue list -R "$REPO" --state all --search "WW-01 in:title" --json number --jq length)"
if [ "$existing" != "0" ]; then
  echo "Tickets already loaded (WW-01 exists). Stopping so nothing is duplicated." >&2
  exit 1
fi

python3 - "$JSON" "$REPO" <<'PY'
import json, subprocess, sys
data = json.load(open(sys.argv[1], encoding="utf-8"))
repo = sys.argv[2]
def run(*a):
    subprocess.run(a, check=True)

labels = sorted({l for i in data["issues"] for l in i["labels"]})
for l in labels:
    run("gh", "label", "create", l, "-R", repo, "--force")

have = json.loads(subprocess.run(["gh", "api", f"repos/{repo}/milestones?state=all&per_page=100"],
                                 check=True, capture_output=True, text=True).stdout)
names = {m["title"] for m in have}
for m in data["milestones"]:
    if m["title"] not in names:
        run("gh", "api", f"repos/{repo}/milestones", "-f", f"title={m['title']}", "-f", f"description={m['description']}")

for i in data["issues"]:
    args = ["gh", "issue", "create", "-R", repo, "--title", i["title"], "--body", i["body"], "--milestone", i["milestone"]]
    for l in i["labels"]:
        args += ["--label", l]
    run(*args)
    print("created", i["id"])
print(f"Done: {len(data['issues'])} issues.")
PY
