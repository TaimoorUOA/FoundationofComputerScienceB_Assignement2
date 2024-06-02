#!/bin/bash


git add *.py

echo "Enter a commit message: "
read message

git commit -m "$message"

echo "Successfully staged and committed all Python files!"