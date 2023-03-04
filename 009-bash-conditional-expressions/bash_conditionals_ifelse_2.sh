#!/bin/bash 

answers_one=("brothers" "sisters" "enemies" "rich")

correct_answer=${answers_one::8}

echo -e "Castor and Polydeuces are\n\t${answers_one[@]}"
read -p "Answer:  " user_answer 

if [[ "${user_answer}" == "${correct_answer}" ]] ; then 
	echo "correct!"
else 
	echo "wrong :("
fi


