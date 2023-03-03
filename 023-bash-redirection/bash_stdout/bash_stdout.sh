#!/bin/bash 

echo -e "\n\033[1mSTDOUT :: STANDARD OUTPUT :: (fd: 1)\033[0m"

echo -e "
The normal non-error text on your terminal screen is printed 
via the $(ColorBlue 'STDOUT') file descriptor. The $(ColorBlue 'STDOUT') of a command can be 
redirected into a file, in such a way that the output of the 
command is written to a file instead of being printed on the 
terminal screen. 

This is done simply with the help of $(ColorGreen '>') and $(ColorGreen '>>') operators."

read a
if [ ${a} == "q" ]; then echo -e "Okay – Bye!" && exit 0; fi

echo -e "
The important thing here to remember is that $(ColorGreen '>') is a destructive
and $(ColorGreen '>>') is non-destructive. This means that $(ColorGreen '>') will overwrite a 
file's contents, while $(ColorGreen '>>') will append it."

read a
if [ ${a} == "q" ]; then echo -e "Okay – Bye!" && exit 0; fi

echo -e "
Further, $(ColorGreen '>') can be written as $(ColorGreen '1>') and $(ColorGreen '>>') can similarly be 
written as $(ColorGreen '1>>')."

# TODO: What is the difference between > & 1> && >> 1>>?
