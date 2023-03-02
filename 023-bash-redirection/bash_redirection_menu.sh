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

menu(){
echo -ne "
$(ColorGreen '1)') STDIN (fd: 0): Manages the input in the terminal.
$(ColorGreen '2)') STDOUT (fd: 1): Manages the output text in the terminal.
$(ColorGreen '3)') STDERR (fd: 2): Manages the error text in the terminal.
$(ColorGreen '0)') Exit 

$(ColorBlue 'Choose an Option:') "

read a

case ${a} in
    1) . ./bash_stdin/bash_stdin.sh ;; 
    2) . ./bash_stdout/bash_stdout.sh ;;
    3) . ./bash_stderr/bash_stderr.sh ;;
    0) echo -e "Okay – Bye!" && exit 0 ;; 
    *) echo -e "Sorry, that's not an option. Try Again?" && menu ;; 
esac
}
    # The scripts in the switch case above are prepennded by an `. ` so that 
    # the variables and methods defined in this script can be reused in the 
    # script being called. We do this so that we can highlight words in the 
    # sourced script using the methods defined in this script.

clear 

echo -e "\nWhich $(ColorGreen 'File Descriptor') do you want to learn about?"

menu