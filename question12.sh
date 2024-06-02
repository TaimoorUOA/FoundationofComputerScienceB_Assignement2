#!/bin/bash

# Switch back to branch2
git checkout branch2

# Restore the stashed changes
git stash pop

# Stage the restored changes
git add file4

# Commit the changes with a commit message
git commit -m "Restore and commit uncommitted changes to file4"
