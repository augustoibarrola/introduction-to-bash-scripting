#!/bin/bash

read -p "Enter a number: " answer

case ${answer} in
	1)
		if [[ ${answer} -eq 1 ]] 
		then
			echo "yes"
		fi
		;;
	*)
		echo "nope"
		;;
esac	
