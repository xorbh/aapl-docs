#!/bin/bash

set -e

REPO_PATH="${REPO_PATH:-.}"
SITE_PATH="${SITE_PATH:-./site}"
GIT_REPO="${GIT_REPO}"

echo "Starting documentation builder..."
echo "Repo path: $REPO_PATH"
echo "Site path: $SITE_PATH"

# Function to build the documentation
build_docs() {
    echo "[$(date +'%Y-%m-%d %H:%M:%S')] Building documentation..."

    cd "$REPO_PATH"

    # Build MkDocs
    mkdocs build --site-dir "$SITE_PATH" --config-file mkdocs.yml

    if [ $? -eq 0 ]; then
        echo "[$(date +'%Y-%m-%d %H:%M:%S')] ✓ Build successful!"
    else
        echo "[$(date +'%Y-%m-%d %H:%M:%S')] ✗ Build failed!"
        return 1
    fi
}

# Initial setup - clone the repository if it doesn't exist
if [ ! -d "$REPO_PATH/.git" ]; then
    echo "Cloning repository..."
    mkdir -p "$REPO_PATH"
    cd "$REPO_PATH"
    git clone "$GIT_REPO" . || true
fi

# Initial build
build_docs

# Monitor for changes using git pull with a polling interval
echo "Monitoring for changes..."
while true; do
    sleep 30  # Check every 30 seconds

    cd "$REPO_PATH"

    # Fetch latest changes
    git fetch origin 2>/dev/null || true

    # Check if there are new commits
    LOCAL=$(git rev-parse HEAD)
    REMOTE=$(git rev-parse origin/master 2>/dev/null || echo "$LOCAL")

    if [ "$LOCAL" != "$REMOTE" ]; then
        echo "[$(date +'%Y-%m-%d %H:%M:%S')] New changes detected, pulling..."
        git pull origin master 2>/dev/null || true
        build_docs
    fi
done
