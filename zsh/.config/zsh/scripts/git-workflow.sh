#! /bin/zsh
# Automate Git workflow

# Commit message
commit_message="$1"

# Check if the current directory is a git repo
if [ $(git rev-parse --is-inside-work-tree) false ]; then
    echo "This is not a Git Repo!"
else
    git add .
    git commit -m "$commit_message"
    git push
    echo "Changes commited and pushed with message: $commit_message"
fi

