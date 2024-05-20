#!/bin/bash

# Check if a commit range or branch is provided
if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <commit1> <commit2>"
  exit 1
fi

commit1=$1
commit2=$2

# Get the list of changed files between the two commits
changed_files=$(git diff --name-only $commit1 $commit2)

# Check if there are any changed files
if [ -z "$changed_files" ]; then
  echo "No changes between $commit1 and $commit2"
  exit 0
fi

# Loop through each changed file and show the diff
for file in $changed_files; do
  echo "Diff for file: $file"
  git diff $commit1 $commit2 -- $file
  echo "---------------------------------------"
done
