#!/bin/bash

echo "Cleaning old builds..."
flutter clean

echo "Building for Web..."
flutter build web --base-href /farmingtipsweb/

echo "Updating docs folder..."
rm -rf docs
cp -r build/web docs

# --- NEW LINE START ---
# This ensures that if a user refreshes /terms, GitHub serves your app 
# instead of a 404 error page.
cp docs/index.html docs/404.html
# --- NEW LINE END ---

echo "Pushing to GitHub..."
git add .
git commit -m "Site update: $(date)"
git push

echo "Done! Deployment is running on GitHub Actions."