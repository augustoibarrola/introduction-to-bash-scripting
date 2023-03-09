#!/bin/bash

# ## File expressions

# * True if file exists and is a block special file.

echo -en "-b : True if file exists and is a block special file: "

# ```bash
# [[ -b ${file} ]]
# ```

if [[ -b ${filePath} ]] 
then 
    echo -e "User Folder ${filePath} exists and is a block special file."
elif [[ -a ${filePath} ]]
then
    echo -e "User Folder ${filePath} exists, but it is not a block special file."
elif [[ ! -a ${filePath} ]]
then
    echo -e "File or Directory ${filePath} does not exist."
fi
