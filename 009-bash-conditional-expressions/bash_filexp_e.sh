#!/bin/bash

# ## File expressions

# * True if file exists.

# ```bash
# [[ -e ${file} ]]
# ```

userFolder="/Users/augustoibarrola"

if [[ -e ${userFolder} ]] 
then 
    echo -e "Folder/File ${userFolder} exists."
elif [[ ! -e ${userFolder} ]]
then
    echo -e "Folder/File ${userFolder} does not exist."
fi
