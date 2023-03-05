#!/bin/bash

# ## File expressions

# * True if file exists and is a regular file.

echo -en "-f : True if file exists and is a regular file: "

# ```bash
# [[ -f ${file} ]]
# ```

if [[ -f ${filePath} ]] 
then 
    echo -e "File ${filePath} exists and is a regular file."
elif [[ -a ${filePath} ]]
then 
    echo -e "${filePath} exists, but it is not a regular file."
elif [[ ! -a ${filePath} ]]
then
    echo -e "Folder/File ${filePath} does not exist."
fi