#!/bin/bash

# Create and switch to branch1
git checkout -b branch1

# Remove dir2
rm -r dir1/dir2

# Move foo to dir1
mv dir1/dir2/foo dir1/foo

# Remove bar_copy
rm dir3/bar_copy

# Create newfile1
touch newfile1

# Stage and commit changes
git add .
git commit -m "Update branch1 configuration"

# Create and switch to branch2
git checkout -b branch2 main

# Move foo to dir2 and modify it
mv dir1/dir2/foo dir1/dir2/foo_modified
echo "Modified content" > dir1/dir2/foo_modified

# Move dir3 to dir1 and add newfile2
mv dir3 dir1/dir3
touch dir1/dir3/newfile2

# Stage and commit changes
git add .
git commit -m "Update branch2 configuration"

# Switch back to main
git checkout main

# Ensure dir1/dir2/foo exists
mkdir -p dir1/dir2
touch dir1/dir2/foo

# Ensure dir3/bar and dir3/bar_copy exist
mkdir -p dir3
touch dir3/bar
cp dir3/bar dir3/bar_copy

# Stage and commit changes
git add .
git commit -m "Update main configuration"
