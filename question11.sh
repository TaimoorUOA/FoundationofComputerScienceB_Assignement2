#!/bin/bash


git branch branch2

git checkout branch2

touch file4

git add file4
git commit -m "Added file4"

echo "New content for file4" >> file4

git stash

git checkout main

echo "Successfully created and switched branches, stashed uncommitted changes in file4!"