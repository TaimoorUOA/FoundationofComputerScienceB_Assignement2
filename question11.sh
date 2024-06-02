#!/bin/bash

# Create and switch to a new branch named branch2
git checkout -b branch2

# Create a new file named file4 and add content to it
echo "This is file4." > file4

# Stage and commit the new file
git add file4
git commit -m "Add file4"

# Modify file4
echo "This is a modification to file4." >> file4

# Stage the changes without committing
git add file4

# Stash the changes to avoid losing data
git stash push -m "Work in progress on file4"

# Switch back to the main branch
git checkout main

# Note: The changes are safely stashed and can be reapplied using 'git stash pop' when you switch back to branch2
