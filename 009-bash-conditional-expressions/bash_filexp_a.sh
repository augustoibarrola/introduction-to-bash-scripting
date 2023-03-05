#!/bin/bash

# ## File expressions

# * True if file exists.

echo -en "-a : True if file exists: "

# ```bash
# [[ -a ${file} ]]
# ```

if [[ -a ${filePath} ]]
then
    echo -e "User Folder exists: ${filePath}"
fi