#!/bin/bash

echo
read -p "What is your favorite color? " user_answer

case ${user_answer} in

	yellow)
		echo -e "nice\n"	
		;;
	green| blue| red)
		echo -e "me too!\n"	
		;;
	*)
		echo -e "gross\n"	
		;;
esac

echo
