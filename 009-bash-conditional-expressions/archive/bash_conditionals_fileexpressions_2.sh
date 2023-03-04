#!/bin/bash

echo -e "\nDoes examplefile.txt exist?"

file="/Users/augustoibarrola/Development/linux/examplefile.txt"

if [[ -a ${file} ]] && [[ ! -d ${file} ]]
then
	echo "examplefile.txt exists! and is not a directory!"
else 
	echo "can't find it."
fi
