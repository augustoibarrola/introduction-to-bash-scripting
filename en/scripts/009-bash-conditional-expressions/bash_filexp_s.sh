#!/bin/bash

# ## File expressions

# * True if file exists and has a size greater than zero.

echo -en "-s : True if file exists and has a size greater than zero: "

# ```bash
# [[ -s ${file} ]]
# ```

if [[ -s ${filePath} ]] 
then 
    echo -e "File ${filePath} exists and has a size greater than zero."
elif [[ -a ${filePath} ]]
then 
    echo -e "${filePath} exists, but it is empty."
elif [[ ! -a ${filePath} ]]
then
    echo -e "Folder/File ${filePath} does not exist."
fi