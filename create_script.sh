#!/bin/bash

# create_script
# This creates a new bash script, assigns permissions and more
# author: abhay k


# is there an argument
if [[ ! $1 ]]; then
  echo "Missing Argument"
  exit 1
fi

scriptname=$1
workdir="${HOME}/Workspace/shellscripts/"
filename="${workdir}/$scriptname"

if [[ -e $filename ]]; then
  echo "File ${filename} already exists."
fi

# check if the file exists or not
if type "$scriptname"; then
  echo "There is already a command with the name ${scriptname}."
fi

# check if the workdir exists
if [[ ! -d $workdir ]]; then
  # if not, create the directory
  if mkdir "$workdir"; then
    echo "${workdir} is created."
  else
    echo "could not create ${workdir}."
    exit 1
  fi
fi

# Create a script with a single line
echo '#!/bin/bash' > "$filename"
chmod u+x $filename

if [[ $EDITOR ]]; then
  $EDITOR "$filename"
else
  echo "Script created, but \$EDITOR variable is not set"
fi

echo "Done."
exit 0