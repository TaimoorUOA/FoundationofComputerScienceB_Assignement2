#!/bin/bash

# Fetch branch1 from the remote server
git fetch origin branch1

# Checkout the branch1
git checkout branch1

# Switch back to the main branch
git checkout main

# Merge branch1 with main
git merge branch1

# (At this point, manually resolve any merge conflicts, then stage and commit the resolved files)

# Add and commit resolved files (replace "filename" with the actual resolved file names)
# git add resolved_file1 resolved_file2
# git commit -m "Resolved merge conflicts between main and branch1"

# Note: The above add and commit commands should be run after resolving conflicts manually
