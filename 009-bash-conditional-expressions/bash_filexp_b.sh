#!/bin/bash

# ## File expressions

# * True if file exists and is a block special file.

# ```bash
# [[ -b ${file} ]]
# ```
userFolder="/Users/augustoibarrola"

if [[ -b ${userFolder} ]] 
then 
    echo -e "User Folder ${userFolder} exists and is a block special file."
elif [[ -a ${userFolder} ]]
then
    echo -e "User Folder ${userFolder} exists, but it is not a block special file."
elif [[ ! -a ${userFolder} ]]
then
    echo -e "File or Directory ${userFolder} does not exist."
fi
