#!/bin/zsh
# deploy-virens-101-public.zsh
# Push Scholar/600_teaching/virens_101/ to the public virens-101 repo,
# excluding private development directories.
#
# Usage: ./deploy-virens-101-public.zsh [commit message]
# Default message: "Update public virens-101"

set -euo pipefail

REPO_ROOT="/Users/preterite/Local/virens/user1"
PREFIX="Scholar/600_teaching/virens_101"
REMOTE="virens-101-public"
BRANCH="main"
STAGING_BRANCH="virens-101-staging"

# Directories to exclude from public repo
PRIVATE_DIRS=(
    "_project"
    "y_meta"
    "x_todevelop"
)

MSG="${1:-Update public virens-101}"

cd "$REPO_ROOT"

# Safety: make sure we're on main and working tree is clean
CURRENT_BRANCH=$(git branch --show-current)
if [[ "$CURRENT_BRANCH" != "main" ]]; then
    echo "ERROR: Must be on main branch (currently on $CURRENT_BRANCH)"
    exit 1
fi

# Clean up any leftover staging branch from a failed run
git branch -D "$STAGING_BRANCH" 2>/dev/null || true

echo "==> Splitting subtree: $PREFIX"
git subtree split --prefix="$PREFIX" --branch="$STAGING_BRANCH"

# Create temporary worktree for the staging branch
TMPDIR=$(mktemp -d -t virens-101-deploy)
echo "==> Creating temporary worktree at $TMPDIR"
git worktree add "$TMPDIR" "$STAGING_BRANCH"

cd "$TMPDIR"

# Remove private directories
for dir in "${PRIVATE_DIRS[@]}"; do
    if [[ -d "$dir" ]]; then
        echo "==> Removing private directory: $dir"
        git rm -rf "$dir" > /dev/null
    fi
done

git commit -m "$MSG (private dirs excluded)" --allow-empty

echo "==> Pushing to $REMOTE $BRANCH"
git push "$REMOTE" HEAD:"$BRANCH" --force

# Cleanup
echo "==> Cleaning up"
cd "$REPO_ROOT"
git worktree remove "$TMPDIR" --force
git branch -D "$STAGING_BRANCH"

echo "==> Done. Public repo updated at $REMOTE/$BRANCH"
echo "    Private directories excluded: ${PRIVATE_DIRS[*]}"
