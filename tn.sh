#!/bin/bash

# a simple note taking script
# Author: abhay

# get the date
date=$(date)

#get the topic from the first variable
topic="$1"

# filename to write
if [[ $filename ]]; then
  filename="${HOME}/${topic}-notes.txt"
else
  filename="${HOME}/notes.txt"
fi

# Ask user for input
read -p "Enter note: " note

# check if the note was input by the user
if [[ $note ]]; then
  echo "$date: $note" >> "$filename"
  echo "'$note' saved in '$filename'"
else
  echo "No input; note wasn't saved."
fi

# echo $1 >> ~/notes.txt
# $1 represents the first value passed to the program on the command line.
# $* represents all the variables passed to the program