# Abercrave Miners Welfare Hall

Bilingual prototype website built with Hugo. Designed for low-cost hosting on Vercel with content in Markdown.

## Local development

```bash
hugo server
```

The site will be available at `http://localhost:1313/`.

## Deploy to Vercel

1. Push this repository to GitHub.
2. Import the repo into Vercel.
3. Build command: `hugo --gc --minify`
4. Output directory: `public`

If Vercel asks for a Hugo version, use `0.131.0` or newer.

## Deploy to GitHub Pages

This repo includes a GitHub Actions workflow that builds the site and pushes to the `gh-pages` branch.

1. Push to `main`.
2. In GitHub repo settings: Pages → Source → `gh-pages` branch.
3. Your site will be available at `https://glanyrafon01.github.io/welfare-website/`.
