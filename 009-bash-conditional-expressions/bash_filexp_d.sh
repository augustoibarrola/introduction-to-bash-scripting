#!/bin/bash

# ## File expressions

# * True if file exists and is a directory.

echo -en "-d : True if file exists and is a directory: "

# ```bash
# [[ -d ${file} ]]
# ```

if [[ -d ${filePath} ]] 
then 
    echo -e "User Folder ${filePath} exists and is a directory."
elif [[ -a ${filePath} ]]
then
    echo -e "User Folder ${filePath} exists, but it is not a directory."
elif [[ ! -a ${filePath} ]]
then
    echo -e "File or Directory ${filePath} does not exist."
fi
