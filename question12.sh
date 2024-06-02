#!/bin/bash

git checkout branch2

git stash pop

git add .

echo "Enter a commit message for branch2: "
read message


git commit -m "$message"

echo "Successfully switched back to branch2, restored and committed stashed changes!"
