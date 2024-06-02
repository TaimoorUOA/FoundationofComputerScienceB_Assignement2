#!/bin/bash

# Create a directory named dir2
mkdir dir2

# Move all text files (.txt) from the current directory to dir2
mv *.txt dir2/

# Stage the changes (moving .txt files to dir2)
git add dir2/*.txt
git rm *.txt

# Commit the staged changes with a commit message
git commit -m "Move all text files to dir2"
