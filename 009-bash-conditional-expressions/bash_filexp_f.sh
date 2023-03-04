#!/bin/bash

# ## File expressions

# * True if file exists and is a regular file.

# ```bash
# [[ -f ${file} ]]
# ```
userFolder="/Users/augustoibarrola"

if [[ -f ${userFolder} ]] 
then 
    echo -e "File ${userFolder} exists and is a regular file."
elif [[ ! a ${userFolder} ]]
then 
    echo -e "${userFolder} exists, but it is not a regular file."
if [[ ! a ${userFolder} ]]
then
    echo -e "Folder/File ${userFolder} does not exist."
fi
