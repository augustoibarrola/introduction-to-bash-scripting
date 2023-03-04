#!/bin/bash

# ## File expressions

# * True if file exists.

# ```bash
# [[ -a ${file} ]]
# ```

userFolder="/Users/augustoibarrola"

if [[ -a ${userFolder} ]]
then
    echo -e "User Folder exists: ${userFolder}"
fi