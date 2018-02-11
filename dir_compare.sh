#!/bin/bash

# dir_compare
# compare the file count in two directories
# author "Abhay"

# check the number of arguments
if [[ $# -ne 2 ]]; then
  echo "Need exactly 2 arguments"
  exit 1
fi

# both arguments should be directories
if [[ ! -d $1 ]]; then
  echo "$1 is not a directory"
  exit 1
fi

if [[ ! -d $2 ]]; then
  echo "$2 is not a directory"
  exit 1
fi

dir1="$1"
dir2="$2"

count1=$(ls -A1 "$dir1" | wc -l)
count2=$(ls -A1 "$dir2" | wc -l)



if [[ $count1 -gt $count2 ]]; then
  echo "'${dir1}' has more files '${dir2}'"
elif [[ $count1 -ne $count2 ]]; then
  echo "'${dir2}' has more files than '${dir1}'"
else
  echo "Files in both directories are the same"
fi

exit 0