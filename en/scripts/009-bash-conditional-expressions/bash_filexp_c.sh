#!/bin/bash

# ## File expressions

# * True if file exists and is a character special file.

echo -en "-c : True if file exists and is a character special file: "

# ```bash
# [[ -c ${file} ]]
# ```

if [[ -c ${filePath} ]] 
then 
    echo -e "User Folder ${filePath} exists and is a character special file."
elif [[ -a ${filePath} ]]
then
    echo -e "User Folder ${filePath} exists, but it is not a character special file."
elif [[ ! -a ${filePath} ]]
then
    echo -e "File or Directory ${filePath} does not exist."
fi
