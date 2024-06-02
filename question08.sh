#!/bin/bash


mkdir dir2

mv *.txt dir2/

git add .

echo "Enter a commit message: "
read message

git commit -m "$message"

echo "Successfully created dir2, moved .txt files, and committed changes!"