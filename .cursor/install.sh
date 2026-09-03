#!/usr/bin/env bash
set -euo pipefail

# Cloud Agent install step for the natural-writing skill package.
#
# This repository ships a Codex/ChatGPT-compatible writing skill (markdown + JSON)
# rather than a compiled application, so there are no project dependencies to
# install. The useful, durable setup work is:
#   1. Validate the skill package structure so a broken package fails fast.
#   2. Warm the npx cache for the `skills` CLI (the tool used to list, validate,
#      install, and use this skill) so the dev loop is fast and works offline.
#
# The script is idempotent: it only reads/validates files and populates a cache.

# Always run from the repository root regardless of the caller's cwd.
cd "$(dirname "$0")/.."

echo "==> Validating skill package structure"
node -e "JSON.parse(require('fs').readFileSync('.codex-plugin/plugin.json','utf8'))" \
  && echo "    .codex-plugin/plugin.json: valid JSON"

test -f skills/natural-writing/SKILL.md \
  && echo "    skills/natural-writing/SKILL.md: present"

# SKILL.md must start with YAML frontmatter containing a name.
head -1 skills/natural-writing/SKILL.md | grep -q '^---$' \
  && echo "    SKILL.md frontmatter: present"

echo "==> Warming npx cache for the skills CLI"
npx --yes skills --help >/dev/null 2>&1 \
  && echo "    skills CLI: available via npx"

echo "==> Install complete"
