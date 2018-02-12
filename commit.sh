#!/bin/bash

# commit.sh
# this file shows a list of all files
# prompts the user to add all the files
# commits them by prompting for a commit message
# pushes the files to git repo

addall=$1

if [[ ! $addall ]]; then
  git st
  echo "Please manually add the files you want to commit"
  exit 0
else
  git aa
fi

echo "Commiting the following files"
comment=$2
git commit -m "$comment"
git push