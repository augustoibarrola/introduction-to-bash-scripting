#!/bin/bash

# ## File expressions

# * True if file exists and is writable.

echo -en "-w : True if file exists and is writable: "

# ```bash
# [[ -w ${file} ]]
# ```

if [[ -w ${filePath} ]] 
then 
    echo -e "File ${filePath} exists and is writable."
elif [[ -a ${filePath} ]]
then 
    echo -e "${filePath} exists, but it is not writable."
elif [[ ! -a ${filePath} ]]
then
    echo -e "Folder/File ${filePath} does not exist."
fi
