#!/bin/bash

echo -e "\nDoes examplefile.txt exist?"

file="/Users/augustoibarrola/Development/linux/examplefile.txt"

if [[ -a ${file} ]]
then
	echo "examplefile.txt exists!"
else 
	echo "can't find it."
fi
