#!/bin/bash

# a simple note taking script
# Author: abhay

# get the date
date=$(date)

#get the topic from the first variable
topic="$1"

# filename to write
filename="${HOME}/${topic}-notes.txt"

# Ask user for input
read -p "Enter note: " note

echo "$date: $note" >> "$filename"
echo "'$note' saved in '$filename'"

# echo $1 >> ~/notes.txt
# $1 represents the first value passed to the program on the command line.
# $* represents all the variables passed to the program