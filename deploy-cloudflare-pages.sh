#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
if [[ -f .env ]]; then
  set -a
  # shellcheck disable=SC1091
  . ./.env
  set +a
fi
: "${CLOUDFLARE_API_TOKEN:?CLOUDFLARE_API_TOKEN must be set in .env or environment}"
rm -rf .deploy
mkdir -p .deploy
cp index.html .deploy/index.html
cp checklist.html .deploy/checklist.html
cp robots.txt .deploy/robots.txt
cp sitemap.xml .deploy/sitemap.xml
cp -R assets .deploy/assets
npx wrangler pages deploy .deploy --project-name page-profit-check --branch main --commit-dirty=true
