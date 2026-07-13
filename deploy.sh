#!/bin/bash
# One-command deploy: commits and pushes, which triggers Netlify's
# auto-deploy (once the repo is connected to a Netlify site via Git).
set -e
git add -A
git commit -m "${1:-Update prospect pipeline}" || echo "Nothing to commit."
git push
echo "Pushed. Netlify will auto-deploy in ~30-60 seconds."
