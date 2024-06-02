#!/bin/bash

git commit

echo "Enter a commit message: "
read message

git commit -m "$message"

echo "Successfully committed changes!"