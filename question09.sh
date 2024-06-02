#!/bin/bash


git branch branch1

git checkout branch1

touch file3

git add file3

echo "Enter a commit message for branch1: "
read message

git commit -m "$message"

echo "Successfully created branch1, switched to it, created and committed file3!