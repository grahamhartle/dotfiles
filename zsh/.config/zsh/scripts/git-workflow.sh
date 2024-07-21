#! /bin/zsh
# Automate Git workflow

# Commit message
commit_message="$1"

# Add changes
git add .

# Commit changes
git commit -m "$commit_message"

# Push changes
git push

echo "Changes commited and pushed with message: $commit_message"
