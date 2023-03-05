#!/bin/bash

# ## File expressions

# * True if file exists.

echo -en "-e : True if file exists: "

# ```bash
# [[ -e ${file} ]]
# ```

if [[ -e ${filePath} ]] 
then 
    echo -e "Folder/File ${filePath} exists."
elif [[ ! -e ${filePath} ]]
then
    echo -e "Folder/File ${filePath} does not exist."
fi
