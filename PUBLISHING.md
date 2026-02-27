# Publishing Yours Truly

Your site looks good locally — now let's put it on the internet.

This guide walks you through pushing your site to GitHub and turning on automatic publishing. Once it's set up, every time you push changes, your site updates itself.

## What you'll need

- A GitHub account (free at [github.com](https://github.com))
- Your site working locally (if you haven't done that yet, start with SETUP.md)

## The short version

1. Create a new repository on GitHub
2. Connect your local site to it
3. Push your code up
4. Turn on GitHub Pages
5. Update your site config with your new URL

After that, every time you push changes to `main`, your site auto-updates.

If you'd like Claude to handle this for you, copy and paste this into the Claude window:

> "Help me publish my site to GitHub Pages. I need to create a repo, push my code, and turn on Pages."

---

## Step 1: Create a GitHub repository

1. Go to [github.com/new](https://github.com/new)
2. Name your repository (this becomes part of your URL, like `yourusername.github.io/your-repo-name`)
3. Leave it set to **Public** (GitHub Pages requires this on free accounts)
4. Do NOT check "Add a README" — you already have one
5. Click **Create repository**

## Step 2: Connect and push

GitHub will show you instructions after creating the repo. In your terminal, run these commands (replacing the URL with the one GitHub gives you):

```
git init
git add .
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/yourusername/your-repo-name.git
git push -u origin main
```

Or tell Claude: "push my site to GitHub" and give him the repository URL.

## Step 3: Turn on GitHub Pages

1. Go to your repo on GitHub
2. Click **Settings** (the gear icon tab)
3. In the left sidebar, click **Pages**
4. Under "Source", select **GitHub Actions**
5. That's it — the workflow file included in your site handles the rest

## Step 4: Update your site config

Your site needs to know its own URL. Open `astro.config.mjs` and update these two lines:

```js
site: 'https://yourusername.github.io',
base: '/your-repo-name',
```

Replace `yourusername` with your GitHub username and `your-repo-name` with your repository name.

Then push the change:

```
git add astro.config.mjs
git commit -m "update site URL"
git push
```

Or tell Claude: "update my site config for GitHub Pages, my username is ___ and my repo is ___"

## Step 5: See it live

After a minute or two, your site will be live at:

`https://yourusername.github.io/your-repo-name/`

Every time you push changes to `main` after this, the site rebuilds and updates automatically.

## Updating your site going forward

The workflow for making changes is:

1. Edit your content or design locally
2. Check it looks good with `./go`
3. When you're happy, push to GitHub:
   ```
   git add .
   git commit -m "describe what you changed"
   git push
   ```
   Or tell Claude: "push my latest changes"

Your site will update within a couple of minutes.

## Custom domains (optional)

If you want your site at your own domain (like `yourname.com` instead of `yourusername.github.io`):

1. Buy a domain from a registrar (Namecheap, Cloudflare, Google Domains, etc.)
2. In your repo's **Settings > Pages**, enter your custom domain
3. Update your DNS settings to point to GitHub — GitHub's docs walk you through this

Or tell Claude: "help me set up a custom domain for my site" and he'll walk you through it.
