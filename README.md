# Page Profit Check

A Small Site Studio resource for small business website improvement, launch readiness, and landing-page conversion diagnostics.

Static landing-page ROI calculator, mini-audit funnel, and small-business website launch checklist resource page.

## GitHub Pages

Live: https://alexzadclaw-ai.github.io/page-profit-check/

## Cloudflare Pages deploy

First-time auth:

```bash
npx wrangler login
```

Deploy:

```bash
cd landing-page-roi-calculator
npx wrangler pages deploy . --project-name page-profit-check
```

Expected free Cloudflare Pages URL pattern:

```text
https://page-profit-check.pages.dev/
```
