#!/bin/bash

# ## File expressions

# * True if file exists and is a symbolic link.

echo -en "-h : True if file exists and is a symbolic link: "

# ```bash
# [[ -h ${file} ]]
# ```

if [[ -h ${filePath} ]] 
then 
    echo -e "File ${filePath} exists and is a a synbolic link."
elif [[ -a ${filePath} ]]
then 
    echo -e "${filePath} exists, but it is not a symbolic link."
elif [[ ! -a ${filePath} ]]
then
    echo -e "Folder/File ${filePath} does not exist."
fi