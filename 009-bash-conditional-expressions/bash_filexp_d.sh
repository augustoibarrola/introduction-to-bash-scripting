#!/bin/bash

# ## File expressions

# * True if file exists and is a directory.

# ```bash
# [[ -d ${file} ]]
# ```

userFolder="/Users/augustoibarrola"

if [[ -d ${userFolder} ]] 
then 
    echo -e "User Folder ${userFolder} exists and is a directory."
elif [[ -a ${userFolder} ]]
then
    echo -e "User Folder ${userFolder} exists, but it is not a directory."
elif [[ ! -a ${userFolder} ]]
then
    echo -e "File or Directory ${userFolder} does not exist."
fi
