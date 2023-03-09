#!/bin/bash

##
# Color Variables
##
greencolor="\033[32m"
bluecolor="\033[34m"
redcolor="\033[31m"
clearcolor="\033[0m"

ColorGreen(){
    echo -ne $greencolor$1$clearcolor
}

ColorBlue(){
    echo -ne $bluecolor$1$clearcolor
}

ColorRed(){
    echo -ne $redcolor$1$clearcolor
}

clear

echo -e "\nWhat do you want to learn today?\n"

menu(){

clear

echo -en "
$(ColorGreen '1')  Conditional Expression
$(ColorGreen '2')  Redirections
$(ColorGreen '0')  Exit 

$(ColorBlue 'Choose an Option:')"
read a 

case ${a} in
    1) (. ./009-bash-conditional-expressions/bash_filexp.sh) ;;
    2) (. ./023-bash-redirection/bash_redirection_menu.sh) ;;
    *) exit 0;
esac

}

menu