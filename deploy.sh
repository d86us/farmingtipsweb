#!/bin/bash

echo "Cleaning old builds..."
flutter clean

echo "Building for Web..."
flutter build web --base-href /farmingtipsweb/

echo "Updating docs folder..."
rm -rf docs
cp -r build/web docs

echo "Pushing to GitHub..."
git add .
git commit -m "Site update: $(date)"
git push

echo "Done! Deployment is running on GitHub Actions."