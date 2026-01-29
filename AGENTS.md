# AGENTS.md

This repo is a Hugo static site for Abercrave Miners Welfare Hall. It is bilingual (English + Welsh) and deployed via Vercel.

If you are an agent working here, follow these conventions.

## Build, Lint, Test

There is no lint or test framework configured. Use Hugo for builds and manual checks.

Common commands:

- Dev server (local):
  - `hugo server`
- Dev server with drafts:
  - `hugo server --buildDrafts`
- Production build (matches Vercel):
  - `hugo --gc --minify`
- Quick build (local sanity check):
  - `hugo --minify`

Single test guidance:

- There are no unit tests. To validate a single page, run `hugo server` and open the specific route (e.g., `/en/history/` or `/cy/hanes/`) in the browser.

## Project structure

- `content/en/`: English content pages
- `content/cy/`: Welsh content pages
- `layouts/`: Hugo templates
- `layouts/partials/`: shared partials
- `assets/css/main.css`: main stylesheet (fingerprinted by Hugo)
- `static/images/`: static assets (logo + photos)
- `i18n/`: string translations
- `hugo.toml`: site configuration and menus
- `vercel.json`: Vercel build configuration

## Bilingual content rules

- English content lives under `content/en/`, Welsh under `content/cy/`.
- Each bilingual page should share the same `translationKey` in front matter.
- Welsh news uses explicit `url` values under `/cy/newyddion/`.
- Menu labels and page refs are defined per language in `hugo.toml`.
- Use the `i18n/` files for shared UI strings instead of hardcoding text in templates.

## Hugo template conventions

- Use `relLangURL` for language-aware links in templates.
- Prefer `.RelPermalink` when linking to pages created from content files.
- Use `.Site.Params` for site-wide contact details and partner links.
- Use `.Params` for page-specific content like hero text or galleries.
- Avoid heavy logic in templates; keep templates readable and content-driven.

## Content authoring guidelines

- Front matter format is YAML in Markdown files.
- Required fields vary by page; common fields include:
  - `title`
  - `description`
  - `translationKey`
- News posts use:
  - `title`, `date`, `summary`, `translationKey`
- Avoid long inline HTML; use Markdown where possible.
- Keep copy concise and community-focused.

## CSS and design conventions

- Palette is defined in `assets/css/main.css` and mirrored in `assets/palette/`.
- Use the CSS variables (`--heritage-green`, `--union-red`, etc.) for colors.
- Keep typography consistent with the current stack:
  - Headings: Cormorant Garamond
  - Body: Work Sans
- Layout relies on a small set of utility-like classes (`.container`, `.section`, `.card`).
- Favor simple, responsive grids and avoid large layout changes in one commit.

## Naming conventions

- File names: kebab-case (e.g., `mining-tradition.md`).
- Welsh routes use Welsh terms (e.g., `traddodiad-glofaol.md`).
- Images: descriptive, kebab-case (e.g., `hall-exterior.jpg`).
- CSS classes: kebab-case for new additions.

## Error handling and robustness

- Defensive template usage with `with` and `if` is preferred.
- Avoid assuming optional params exist; wrap in `with`.
- For bilingual links, fall back to `.Site.Home` when translation is missing.

## Performance and accessibility

- Provide `alt` text for images.
- Keep images reasonably sized; optimize before adding.
- Maintain semantic headings (one `h1` per page).

## Deployment notes

- Vercel build command is `hugo --gc --minify` (see `vercel.json`).
- Output directory is `public`.

## Cursor/Copilot rules

- No Cursor rules found in `.cursor/rules/` or `.cursorrules`.
- No Copilot instructions found in `.github/copilot-instructions.md`.
