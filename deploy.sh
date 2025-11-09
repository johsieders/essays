#!/bin/bash
set -e  # Exit on any error

echo "=== Bagatelles Deployment Script ==="
echo ""

# Check if we're in the main branch
CURRENT_BRANCH=$(git branch --show-current)
if [ "$CURRENT_BRANCH" != "main" ]; then
    echo "❌ Error: You must be on the 'main' branch to deploy."
    echo "   Current branch: $CURRENT_BRANCH"
    exit 1
fi

# Check for uncommitted changes
if ! git diff-index --quiet HEAD --; then
    echo "❌ Error: You have uncommitted changes. Please commit or stash them first."
    git status --short
    exit 1
fi

echo "✓ On main branch with clean working directory"
echo ""

# Build the Jupyter Book
echo "📚 Building Jupyter Book..."
cd bagatelles
jupyter-book build . --all
cd ..
echo "✓ Build completed"
echo ""

# Switch to gh-pages branch
echo "🔄 Switching to gh-pages branch..."
git checkout gh-pages
git pull origin gh-pages
echo "✓ On gh-pages branch"
echo ""

# Copy HTML files to root
echo "📦 Copying HTML files to gh-pages root..."
cp -r bagatelles/_build/html/* .

# Clean up unnecessary directories
echo "🧹 Cleaning up..."
rm -rf bagatelles .idea

# Check if there are any changes
if git diff-index --quiet HEAD --; then
    echo "ℹ️  No changes to deploy - site is already up to date"
    git checkout main
    exit 0
fi

# Show what changed
echo ""
echo "📝 Changes to be deployed:"
git status --short
echo ""

# Commit and push
echo "💾 Committing changes..."
COMMIT_MSG="Deploy: $(date '+%Y-%m-%d %H:%M:%S')"
git add -A
git commit -m "$COMMIT_MSG"

echo "🚀 Pushing to GitHub..."
git push origin gh-pages

echo "✓ Deployment complete!"
echo ""

# Switch back to main
echo "🔄 Switching back to main branch..."
git checkout main
echo "✓ Back on main branch"
echo ""

echo "✅ All done! Your site will be live at https://jsiedersleben.de/ in 1-2 minutes."