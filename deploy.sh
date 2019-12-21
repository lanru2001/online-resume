#!/bin/bash

if [ "`git status -s`" ]
then
    echo "There are some dirty changes. Please commit any pending changes"
    exit 1
fi

echo "Deleting old publication"
rm -rf public
mkdir public
git worktree prune
rm -rf .git/worktrees/public/

echo "Checking out gh-pages branch into public"
git worktree add -B gh-pages public origin/gh-pages

echo "Removing existing files"
rm -rf public/*

echo "Generating site"
hugo

echo "Updating gh-pages branch"
cd public && git add --all  && git commit -m "publishing to gh-pages"

git push --all