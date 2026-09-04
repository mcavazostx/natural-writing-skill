#!/usr/bin/env bash
set -euo pipefail

# Cloud Agent install step for the natural-writing skill package.
#
# This repository ships a Codex/ChatGPT-compatible writing skill (markdown + JSON)
# rather than a compiled application, so there are no project dependencies to
# install. The base image already provides Node, npx, git, and curl.
#
# The useful, durable setup work is to validate the skill package structure so a
# malformed package fails fast. The `skills` CLI itself is run on demand with
# `npx skills ...` (see README); network egress is available for that fetch.
#
# The script is read-only/idempotent: it only validates files.

# Always run from the repository root regardless of the caller's cwd.
cd "$(dirname "$0")/.."

echo "==> Validating skill package structure"

node -e "JSON.parse(require('fs').readFileSync('.codex-plugin/plugin.json','utf8'))" \
  && echo "    .codex-plugin/plugin.json: valid JSON"

test -f skills/natural-writing/SKILL.md \
  && echo "    skills/natural-writing/SKILL.md: present"

# SKILL.md must start with YAML frontmatter.
head -1 skills/natural-writing/SKILL.md | grep -q '^---$' \
  && echo "    SKILL.md frontmatter: present"

echo "==> Install complete"
