# Stoll Prospect Pipeline

Single-file static app (`index.html`) backed by a Supabase project
(`stoll-prospect-pipeline`) via a passcode-gated edge function
(`board-api`). No build step — Netlify just serves the file as-is.

## One-time setup

1. **Unzip this folder locally** and open a terminal in it.
2. **Initialize git and create a GitHub repo** (empty, no README/license) at
   github.com/new, e.g. `stoll-prospect-pipeline`.
3. **Push this folder to it:**
   ```
   git init
   git add -A
   git commit -m "Initial commit"
   git remote add origin https://github.com/<your-username>/stoll-prospect-pipeline.git
   git branch -M main
   git push -u origin main
   ```
4. **Connect it to Netlify:**
   - Netlify dashboard → "Add new site" → "Import an existing project"
   - Choose GitHub, select this repo
   - Build command: leave blank
   - Publish directory: `.`
   - Deploy

   This gives you a permanent URL and turns on auto-deploy: every push to
   `main` redeploys automatically, usually within a minute.

## Ongoing updates

Whenever Claude gives you an updated `index.html`:

1. Replace the local `index.html` in this folder with the new version.
2. Run:
   ```
   ./deploy.sh "describe what changed"
   ```
   (First time: `chmod +x deploy.sh`)

That's it — one command, and Netlify picks it up automatically. No more
drag-and-drop, no more link changing.

## Changing the passcode

The passcode itself lives in Supabase, not in this code. Ask Claude to
update it directly in the database (`app_config` table) — no redeploy
needed for that.
