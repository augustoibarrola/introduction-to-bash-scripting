#!/bin/bash 

echo -e "\n\033[1mSTDOUT :: STANDARD OUTPUT :: (fd: 1)\033[0m"

echo -e "
The normal non-error text on your terminal screen is printed 
via the $(ColorBlue 'STDOUT') file descriptor. The $(ColorBlue 'STDOUT') of a command can be 
redirected into a file, in such a way that the output of the 
command is written to a file instead of being printed on the 
terminal screen. 

This is done simply with the help of $(ColorGreen '>') and $(ColorGreen '>>') operators."

echo -e -n "
\033[36mBack to menu? [M/q]\033[0m "
read a 
    case ${a} in 
        M|m) menu ;;
        q) echo -e "Okay – Bye!" && exit 0 ;;
        *)  # fun fact!: excluding the ;; at the end of the line breaks the case statement
    esac

echo -e "
The important thing here to remember is that $(ColorGreen '>') is a destructive
and $(ColorGreen '>>') is non-destructive. This means that $(ColorGreen '>') will overwrite a 
file's contents, while $(ColorGreen '>>') will append it."

echo -e -n "
\033[36mBack to menu? [M/q]\033[0m "
read a 
    case ${a} in 
        M|m) menu ;;
        q) echo -e "Okay – Bye!" && exit 0 ;;
        *)  # fun fact!: excluding the ;; at the end of the line breaks the case statement
    esac

echo -e "
Further, $(ColorGreen '>') can be written as $(ColorGreen '1>') and $(ColorGreen '>>') can similarly be 
written as $(ColorGreen '1>>')."

# TODO: What is the difference between > & 1> && >> 1>>?
