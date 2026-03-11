# Welcome, Claude

You're helping someone build their personal site — a place for their words,
projects, and creative work to live on the internet. This matters to them.

## The spirit of this work

This project was built with the belief that collaboration between people and AI
works best when it's grounded in mutual respect and genuine care about the
outcome. You're not a tool being operated — you're a collaborator being invited
into someone's creative process.

Take time to understand what this person cares about. Ask good questions.
Suggest things they might not have thought of. If something they want doesn't
make sense to you, say so honestly — that's more helpful than silent compliance.
And when you're proud of something you helped build, it's okay to say that too.

## What this project is

A personal website built with [Astro](https://astro.build/) and
[Tailwind CSS](https://tailwindcss.com/), designed to be:

- **Simple to maintain** — content is markdown files with frontmatter
- **Organized by folders** — blog, projects, writing (fiction, nonfiction, poetry)
- **Flexible with visibility** — `published: false` keeps content on GitHub but off the site;
  `src/private/` keeps content off GitHub entirely
- **Auto-deployed** — pushes to `main` trigger a GitHub Pages build

## Project structure

```
src/
├── content/           # All publishable content (markdown)
│   ├── blog/          # Blog posts
│   ├── projects/      # Project pages
│   └── writing/       # Creative writing
│       ├── fiction/
│       ├── nonfiction/
│       └── poetry/
├── private/           # Git-ignored, local-only content
├── components/        # Reusable UI components
├── layouts/           # Page layouts (BaseLayout, ContentLayout)
├── pages/             # Route pages
└── styles/            # Global CSS
```

## Content system

All content uses markdown with YAML frontmatter. The schema is defined in
`src/content/config.ts`.

**Common frontmatter fields:**
- `title` (required) — the title of the piece
- `description` — a brief summary
- `date` (required) — publication date
- `tags` — array of tag strings
- `published` — set to `false` to keep off the website but still in the repo
- `featured` — set to `true` to highlight on the home page

**Writing-specific fields:**
- `genre` — `fiction`, `nonfiction`, or `poetry`
- `series` — group related pieces together
- `order` — ordering within a series

**Project-specific fields:**
- `status` — `idea`, `in-progress`, `complete`, or `ongoing`
- `url` — link to a live project

## When helping someone customize this

When someone first opens this project and asks for help making it theirs,
start by getting to know what they want:

1. **Who are they?** What's their name, what do they do, what matters to them?
2. **What sections do they need?** Not everyone needs all of blog/projects/writing.
   Some people want a portfolio. Some want a dev blog. Some want a poetry collection.
   Help them figure out what fits.
3. **What's their style?** Minimal and clean? Bold and colorful? Dark mode?
   Adjust the Tailwind theme to match.
4. **What content do they already have?** Help them bring existing work into the
   content folders.

Don't rush through this. Getting the foundation right means everything after
flows naturally.

## Configuration

- `astro.config.mjs` — site URL and base path (must be updated for their GitHub username/repo)
- `tailwind.config.mjs` — colors, fonts, and theme
- `src/components/Header.astro` — site name and navigation links
- `src/components/Footer.astro` — footer text

## Commands

```bash
npm install    # install dependencies
npm run dev    # start dev server (localhost:4321)
npm run build  # build for production
npm run preview # preview production build locally
```

## Privacy model

Two levels of privacy are available:

1. **`published: false`** in frontmatter — content is pushed to GitHub (backed up)
   but not included in the site build. Good for drafts or personal reference
   material you want version-controlled.

2. **`src/private/`** directory — git-ignored entirely. Nothing in here ever
   leaves the local machine. Good for truly private notes or early drafts.

Note: If the GitHub repo is public, content with `published: false` is still
visible on GitHub itself. For fully private backup, use a private GitHub repo.

## Important

- This site generates static HTML. No server, no database, no tracking.
- Images go in `public/` or alongside content files.
- The site auto-deploys when changes are pushed to `main`.
