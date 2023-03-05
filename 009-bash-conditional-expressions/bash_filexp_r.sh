#!/bin/bash

# ## File expressions

# * True if file exists and is readable.

echo -en "-r : True if file exists and is readable: "

# ```bash
# [[ -r ${file} ]]
# ```

if [[ -r ${filePath} ]] 
then 
    echo -e "File ${filePath} exists and is a readable."
elif [[ -a ${filePath} ]]
then 
    echo -e "${filePath} exists, but it is not readable."
elif [[ ! -a ${filePath} ]]
then
    echo -e "Folder/File ${filePath} does not exist."
fi
