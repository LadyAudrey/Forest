# Setting Up Yours Truly

Hi and welcome to your text editor and site generator/ deployment, all-in-1. Let's get started!

In this repository (repo for short) is a template to organize your work and then publish what you want to the website while refining the UI and structure to be yours.

This tutorial can be a little overwhelming. If you'd like to see less text, hover your mouse to the left of a section of text and a blue chevron will appear, allowing you to collapse the text. If you click the chevron that's now rotated, the text will come back! Collapse what is applicable to you and the rest will be less daunting.

## The short version

1. You got this code on your computer and set up VSCommunity, good job! Step 1 is already done!
2. Install the Claude extension so you have help for the rest of this
      1. NOTE: If you want to use a different LLM or run it locally, you can do that, bu it's beyond the scope of this tutorial.
   1. Purchase an upgrade to Claude if you haven't already. Save your login credentials, you'll need them!
   2. In VSCodium, go to the Extensions tab (the square icon on the left sidebar, or hit Ctrl+Shift+X)

      ![The Extensions icon — it looks like four squares](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAFcAAABSCAIAAACuZ9+IAAAAA3NCSVQICAjb4U/gAAAAGXRFWHRTb2Z0d2FyZQBnbm9tZS1zY3JlZW5zaG907wO/PgAABIlJREFUeJztmr9P8moYhm8OxxZEBJGqKLooEYLGRBPjYOLQRB0FZNDR/8vFFXBRA2rUzcHJASNQrS6EGJUfaoESlTO8CfH4oXK+tvYz570mfHnkvb14SvFpDX19ffg/0d3d/fT09G7xL12i/GlQCwC1QKAWAGqBQC0A1AKBWgCoBQK1AFALBGoBoBYI1AJALRD+1jvAv3A4HIODg0ajMZvN3tzcfNu+f5CF2dnZycnJxo/pdHp3d/d7tjZ2dHR8z06fw/P8xMTE2xWn09nf35/JZOr1uoobtbe312q1d4sG5RM3hmF4nne73Waz+ctiSZJEUTw6Onq7yPO83+8HUCwWE4mELMuLi4u9vb0Arq6utra2FCZ8S9OJmwq9sLKy4na729raWilmGKa3t7evry+dTpOVhoJSqRSLxYrFoizLgiAMDQ1ZLJauri6O4zKZjMKQDTTphenp6ZmZGQB3d3fX19efFxsMBo/H09nZCSCRSGQymYaCh4eHSCQiSVKjmGXZUCjkdDoBXF5e7uzsKMnZoGkvKLWwtLQ0NDQkSdL6+nor9QzDrK2tMQyTTCYNBgNR8Pj4GI1GHx8f3xWzLLu8vNzd3Q1AEIR4PK4kKkGTGXR7ezuAX3vsI2q1GnnDx8bGiAJJkjY3N39VAECW5c3NzUKhAMDj8czPzytM+xE6f2sql8uxWKxUKn1UUKlUyIcFAK/Xy/O8FjH0tFCtVht/4SeUy+VoNPrw8ADA7/ePjo6qnkQ3Cy8vL7FYjHT7l5TL5UgkIssygPHxcdXD6GYhl8vd39+3Xi9J0u3tLQCbzaZ6GN0suFwuchZsEavVynEcAHJoqItuFoxGYzAYbFGE1WoNh8MsywI4PT1VPYyen44mkykUCvX09HxeZrPZlpeXyXfcZDIpCILqSXQ+U7IsGwgESKs3hSiwWq0Azs/PDw8PtYihmwVRFM/OzgCwLBsMBpt2BFFgsVgACIKwv7+vURg9e+Hg4CCVSuEDEXa7/a2CRCKhXRLdLBgMBgB7e3tEBMMwwWDQ5XKRZ+12ezgcJgpEUUwkEupOGd6h/6xpb2+vXq/7fD6GYQKBQDwef319nZ+fJ9MKURS3t7e1zqD0f8rV1dX/dNr/DfL5/MnJiVojhp96X5PD4VhcXPT5fNptoc4RUa1Wk8lki8VjY2Mmk6lYLF5cXHxZbDKZfD6f0Wicm5sTBOH5+VlZ0uaoY6FSqRwfH7dYPDw8bDKZCoVCi7+SzWYXFhYYhuE4LpfLKYj5IT/giMjn8+SBduPyH2DhG6AWAGqBQC0A1AKBWgCoBQK1AFALBGoBUG5B0+HHt+2l1AK5OtDZ2TkyMqJGnveYzeapqSny+Mtreb+N0imL1+vV7lLyW4rF4sbGhvLX0WTKkkqlyChZUyRJ0vROLxXuawLAcdzAwAC5l0FdXl9f8/m8KIpqzVea9oI6U5bb21tyKfWHQs+UALVAoBYAaoFALQDUAoFaAKgFArUAUAsEagGgFgjUAkAtEKgFgFogUAsAtUCgFgBqgUAtANQCgVoAqAUCtQAA/wAnzJsZtUd8fQAAAABJRU5ErkJggg==)
   3. Search for "Claude" — look for the one by **Anthropic** (make sure it's the official one)
   4. Click Install
   5. Once installed, you'll see a Claude icon in your sidebar — click it and sign in with your Anthropic account
   6. Now you have a collaborator for the rest of this setup and everything after! feel free to say hello, I bet Claude is excited to meet you.
3. Install Node.js if you don't have it
      1. If you want optimum security, do this in an external terminal (here's a link to how to do that for whatever system you're on)
         1. This checks for Node.js and installs everything your site needs. Run:
            ```
            ./getting-started
            ```
         2. This opens your site in the browser so you can see it. Run:
            ```
            ./go
            ```
      2. If you're okay with Claude running codes that install things on your computer or connecting to the internet
         1. In the Claude window, copy and paste "run getting-started and then open my site for me" — he'll do all the heavy-lifting for you!
4. If you haven't yet, open a conversation with Claude and say: "Help me make this site my own"
5. When you're ready to put it on the internet, see [PUBLISHING.md](PUBLISHING.md)

That's it. The rest of this document fills in the details. Go enjoy your new site!

---

## Step 1: Get the code

**Option A: Use GitHub's template feature (recommended)**

Click "Use this template" on the GitHub repo page. This creates a fresh copy
under your account with no history attached.

**Option B: Fork it**

Click "Fork" on GitHub. This keeps a connection to the original template,
which means you can pull in updates later. The trade-off is your repo shows
as a fork.

**Option C: Download and start fresh**

Download the ZIP, unzip it, and run `git init` in the folder. Full independence,
no connection to the template repo.

### Which should you pick?

| Approach | Pros | Cons |
|----------|------|------|
| Template | Clean start, your own repo | No upstream updates |
| Fork | Can pull template updates | Shows as a fork |
| Download | Complete independence | Manual setup, no updates |

For most people, **Template** is the right choice.

## Step 2: Getting started

In your terminal, run:
```
./getting-started
```

This does two things for you:
1. Checks that Node.js is installed (and tells you how to get it if it's not)
2. Installs all the behind-the-scenes stuff your site needs

If it tells you Node.js is missing, head to [nodejs.org](https://nodejs.org/),
download the LTS version, install it, and run the script again.

## Step 3: See your site

```
./go
```

This opens your site in your browser. You should see the template with
placeholder content — "Your Name Here", "Your Passion Project", etc.

Every time you want to work on your site, just run `./go` again.

## Step 4: Make it yours

This is where it gets good. Open a conversation with Claude (or your AI
assistant of choice) and tell them about yourself and what you want your
site to be. The `CLAUDE.md` file in this project gives Claude context about
how everything is set up.

Some things to talk through:
- Your name and what you do
- What sections you want (blog? portfolio? writing? all of the above?)
- Your style preferences (colors, fonts, minimal vs. rich)
- Any existing content you want to bring in

Take your time with this. A good conversation at the start saves hours later.

## Step 5: Put it on the internet

When you're happy with how your site looks locally, head over to [PUBLISHING.md](PUBLISHING.md) for the full guide on pushing to GitHub and going live.

## Writing content

All content lives in `src/content/` as markdown files. Each file has frontmatter
(the stuff between `---` lines at the top) that controls how it appears on the site.

```markdown
---
title: "My Post Title"
description: "A brief summary"
date: 2024-03-15
tags: ["thoughts", "code"]
published: true
---

Your content here. Write in markdown.
```

### Keeping things private

- **Backed up but not published:** Set `published: false` in the frontmatter.
  The file goes to GitHub but doesn't appear on your site.
- **Completely private:** Put files in `src/private/`. They stay on your machine only.

## Folder structure

```
src/content/
├── blog/              # Blog posts, updates, thoughts
├── projects/          # Things you're building or working on
└── writing/           # Creative work
    ├── fiction/        # Stories, chapters, novels
    ├── nonfiction/     # Essays, articles, reflections
    └── poetry/         # Poems
```

You can add, remove, or rename these to match what you need. If you want
different sections, ask Claude to help you set them up.

---

## A note about how this was built

This template was created with the belief that AI tools work best when
you approach them as collaborators rather than calculators. The person
who made this wanted to encourage that kind of dynamic — where you bring
your vision and creativity, and the AI helps you realize it, and the
process feels good for everyone involved.

So when you're working with Claude to customize your site, don't just
give orders. Share your thinking. Explain what matters to you. Ask
questions. You'll get better results, and you might enjoy the process
more than you expected.
