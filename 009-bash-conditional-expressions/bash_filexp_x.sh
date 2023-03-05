#!/bin/bash

# ## File expressions

# * True if file exists and is executable.

echo -en "-x : True if file exists and is executable: "

# ```bash
# [[ -x ${file} ]]
# ```

if [[ -x ${filePath} ]] 
then 
    echo -e "File ${filePath} exists and is executable."
elif [[ -a ${filePath} ]]
then 
    echo -e "${filePath} exists, but it is not executable."
elif [[ ! -a ${filePath} ]]
then
    echo -e "Folder/File ${filePath} does not exist."
fi
