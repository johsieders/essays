#!/bin/bash
set -e  # Exit on any error

echo "=== Bagatelles Deployment Script ==="
echo ""

# Run a git command, retrying while another process is holding .git/index.lock.
# PyCharm's VCS integration grabs that lock for a moment when it refreshes, which
# used to abort the deploy mid-way (set -e) and leave the repo on gh-pages.
# Only lock contention is retried; every other git failure aborts immediately.
git_retry() {
    local attempt=1
    local max_attempts=6
    local delay=2
    local out rc

    while true; do
        rc=0
        out=$(git "$@" 2>&1) || rc=$?

        if [ $rc -eq 0 ]; then
            if [ -n "$out" ]; then echo "$out"; fi
            return 0
        fi

        if [ $attempt -ge $max_attempts ] || [[ "$out" != *index.lock* ]]; then
            echo "$out" >&2
            if [[ "$out" == *index.lock* ]]; then
                echo "" >&2
                echo "Error: .git/index.lock is still held after $max_attempts attempts." >&2
                echo "   Close PyCharm (or pause its VCS refresh) and try again." >&2
                echo "   If no git process is running, the lock is stale: rm -f .git/index.lock" >&2
            fi
            return $rc
        fi

        echo "   Note: .git/index.lock is busy (git $1), retrying in ${delay}s [$attempt/$((max_attempts - 1))]..."
        attempt=$((attempt + 1))
        sleep $delay
    done
}

# Check if we're in the main branch
CURRENT_BRANCH=$(git branch --show-current)
if [ "$CURRENT_BRANCH" != "main" ]; then
    echo "Error: You must be on the 'main' branch to deploy."
    echo "   Current branch: $CURRENT_BRANCH"
    exit 1
fi

# Check for uncommitted changes
if ! git diff-index --quiet HEAD --; then
    echo "Error: You have uncommitted changes. Please commit or stash them first."
    git status --short
    exit 1
fi

echo "OK: On main branch with clean working directory"
echo ""

# Push main branch to GitHub first
echo "Pushing main branch to GitHub..."
git push origin main
echo "OK: Main branch synced with GitHub"
echo ""

# Build the Jupyter Book
# Clean build directory only (never touch _static source files)
echo "Cleaning build directory..."
rm -rf bagatelles/_build

echo "Building Jupyter Book..."
cd bagatelles
jupyter-book build .
cd ..

# Verify custom.css made it into the build
if [ ! -f bagatelles/_build/html/_static/custom.css ]; then
    echo "Error: custom.css missing from build output."
    echo "   Check that bagatelles/_static/custom.css exists."
    exit 1
fi

echo "OK: Build completed"
echo ""

# Switch to gh-pages branch
echo "Switching to gh-pages branch..."
git_retry checkout gh-pages
git_retry pull origin gh-pages
echo "OK: On gh-pages branch"
echo ""

# Copy HTML files to root
echo "Copying HTML files to gh-pages root..."
cp -r bagatelles/_build/html/* .

# Clean up unnecessary directories
echo "Cleaning up..."
rm -rf bagatelles .idea

# Check if there are any changes
if git diff-index --quiet HEAD --; then
    echo "No changes to deploy - site is already up to date"
    git_retry checkout main
    exit 0
fi

# Show what changed
echo ""
echo "Changes to be deployed:"
git status --short
echo ""

# Commit and push
echo "Committing changes..."
COMMIT_MSG="Deploy: $(date '+%Y-%m-%d %H:%M:%S')"
git_retry add -A
git_retry commit -m "$COMMIT_MSG"

echo "Pushing to GitHub..."
git push origin gh-pages

echo "OK: Deployment complete!"
echo ""

# Switch back to main
echo "Switching back to main branch..."
git_retry checkout main
echo "OK: Back on main branch"
echo ""

echo "All done! Your site will be live at https://jsiedersleben.de/ in 1-2 minutes."
