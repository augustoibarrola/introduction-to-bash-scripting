#!/bin/bash

# ## File expressions

# * True if file exists and is a character special file.

# ```bash
# [[ -c ${file} ]]
# ```
userFolder="/Users/augustoibarrola"

if [[ -c ${userFolder} ]] 
then 
    echo -e "User Folder ${userFolder} exists and is a character special file."
elif [[ -a ${userFolder} ]]
then
    echo -e "User Folder ${userFolder} exists, but it is not a character special file."
elif [[ ! -a ${userFolder} ]]
then
    echo -e "File or Directory ${userFolder} does not exist."
fi
