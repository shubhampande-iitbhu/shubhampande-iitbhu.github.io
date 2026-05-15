#!/usr/bin/env bash
# preview.sh — Preview your website locally before publishing.
# Usage: bash preview.sh

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  🔍  Starting local preview..."
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "  🌐  Preview your site at: http://localhost:4000"
echo "  ⏹   Press Ctrl+C to stop the preview."
echo ""
echo "  Note: If you edit _config.yml, stop (Ctrl+C) and"
echo "  run this script again for changes to take effect."
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

bundle exec jekyll serve --livereload --host localhost
