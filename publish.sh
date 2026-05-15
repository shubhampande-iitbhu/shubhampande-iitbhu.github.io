#!/usr/bin/env bash
# publish.sh — Save your changes and update the live website.
# Usage: bash publish.sh

set -e

SITE_URL="https://shubhampande-iitbhu.github.io"

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  📡  Publishing to: $SITE_URL"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# ── Step 1: Check for changes ────────────────────────────────────────────────
if git diff --quiet && git diff --cached --quiet && [ -z "$(git ls-files --others --exclude-standard)" ]; then
  echo "✅  Nothing to publish. Your site is already up to date."
  echo ""
  exit 0
fi

# ── Step 2: Show what changed ────────────────────────────────────────────────
echo "The following files have changed since your last publish:"
echo ""

# New/untracked files
NEW=$(git ls-files --others --exclude-standard)
if [ -n "$NEW" ]; then
  echo "  🆕  New files:"
  echo "$NEW" | sed 's/^/       /'
fi

# Modified files
MODIFIED=$(git diff --name-only; git diff --cached --name-only)
if [ -n "$MODIFIED" ]; then
  echo "  ✏️   Modified files:"
  echo "$MODIFIED" | sort -u | sed 's/^/       /'
fi

echo ""

# ── Step 3: Ask for a description ───────────────────────────────────────────
echo "Describe your update in one line (e.g. 'added IEDM 2025 paper'):"
read -r COMMIT_MSG

if [ -z "$COMMIT_MSG" ]; then
  COMMIT_MSG="site update"
fi

echo ""

# ── Step 4: Stage all changes ───────────────────────────────────────────────
echo "⏳  Staging all changes..."
git add .

# ── Step 5: Commit ──────────────────────────────────────────────────────────
echo "⏳  Saving snapshot: \"$COMMIT_MSG\""
git commit -m "$COMMIT_MSG"

# ── Step 6: Push ────────────────────────────────────────────────────────────
echo "⏳  Sending to GitHub..."
git push origin main

# ── Step 7: Done ────────────────────────────────────────────────────────────
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  ✅  Done! Your website will update in 1–2 minutes."
echo "  🌐  View it at: $SITE_URL"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
