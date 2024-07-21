#! /usr/bin/env zsh

if [ -d .git ]; then
    echo "git repo"
else
    echo "not git repo"
fi
