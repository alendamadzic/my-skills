#!/bin/bash

# install-skills.sh
# Installs Alen's standard skill set for new development projects.
# Targets Claude Code only, project scope, using symlinks (default).
# Usage: bash install-skills.sh

set -e

SKILLS=(
  "https://github.com/jakubkrehel/make-interfaces-feel-better|make-interfaces-feel-better"
  "https://github.com/anthropics/skills|frontend-design"
  "https://github.com/vercel-labs/agent-skills|vercel-react-best-practices"
  "https://github.com/remotion-dev/skills|remotion-best-practices"
  "https://github.com/shadcn/ui|shadcn"
)

echo ""
echo "🔧 Installing dev skills..."
echo ""

INSTALLED=0
FAILED=0

for entry in "${SKILLS[@]}"; do
  REPO="${entry%%|*}"
  SKILL="${entry##*|}"

  echo "→ Installing $SKILL..."
  if bunx skills add "$REPO" --skill "$SKILL" -a claude-code -a universal -y; then
    echo "  ✓ $SKILL installed"
    ((INSTALLED++))
  else
    echo "  ✗ Failed to install $SKILL"
    ((FAILED++))
  fi
  echo ""
done

echo "Done. $INSTALLED installed, $FAILED failed."
echo ""
