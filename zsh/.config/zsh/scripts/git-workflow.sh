#! /usr/bin/env zsh
# Automate Git workflow

# Commit message
commit_message="$1"

# Check if the current directory is a git repo
if [ -d .git ]; then
    git add .
    git commit -m "$commit_message"
    git push
    echo "Changes commited and pushed with message: $commit_message"
else
    echo "This is not a Git Repo!"
fi
