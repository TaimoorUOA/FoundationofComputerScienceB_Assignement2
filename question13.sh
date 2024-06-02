#!/bin/bash

# Define the new branch name
NEW_BRANCH="submission_branch"

# Create and switch to the new branch
git checkout -b $NEW_BRANCH

# Remove all .sh files from the new branch
find . -name "*.sh" -exec git rm -f {} \;

# Commit the removal of .sh files
git commit -m "Remove all .sh files from the branch"

# Create a new text file named file13.txt
echo "This is file13." > file13.txt

# Stage the new text file
git add file13.txt

# Commit the new text file
git commit -m "Add file13.txt"

# Push the new branch to GitHub
git push origin $NEW_BRANCH
