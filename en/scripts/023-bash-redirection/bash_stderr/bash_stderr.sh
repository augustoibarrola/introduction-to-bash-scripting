#!/bin/bash 

clear

echo -e "\n\033[1mSTDERR :: STANDARD ERROR :: (fd: 2)\033[0m"

echo -e "
$(ColorBlue 'STDERR') can be redirected using the $(ColorGreen '2>') operator."

echo -e -n "
\033[36m[M/q]\033[2K "
read a 
    case ${a} in 
        M|m) menu ;;
        q) echo -e "Okay – Bye!" && exit 0 ;;
        *)  # fun fact!: excluding the ;; at the end of the line breaks the case statement
    esac

echo -e -n "
For example, lets run the (incorrect) command $(ColorGreen 'ls --hello'):"

read 

echo -e "
$(ColorGreen 'ls --hello')
"

# ls --hello 2>&1  #- [What does " 2>&1 " mean?](https://stackoverflow.com/questions/818255/what-does-21-mean)
ls --hello 2> >(sed $'s,.*,\e[31m&\e[m,'>&2) #- [bash: print stderr in red color](https://serverfault.com/questions/59262/bash-print-stderr-in-red-color)

echo -e -n "
This error message is known as the $(ColorBlue 'STDERR') of the command.
Whenever we think these error messages might pop up, we can use
$(ColorGreen '2>') to redirect the message either to the terminal or a 
specified file.

$(ColorGreen 'ls --hello 2> error.txt')"

read

echo -e "
Redirecting $(ColorBlue 'STDERR') to a file works the same as redirecting 
$(ColorBlue 'STDOUT') as a file: we can use either $(ColorGreen '>') or $(ColorGreen '>>') to destructivley
or non-destructivley write to a file.

However, since this is a $(ColorBlue 'STDERR') and not a $(ColorBlue 'STDOUT'), we have to
specify the File Descriptor by appending a 2 to $(ColorGreen '>') or $(ColorGreen '>>')."

echo -e -n "
\033[36m[M/q]\033[0m "
read a 
    case ${a} in 
        M|m) menu ;;
        q) echo -e "Okay – Bye!" && exit 0 ;;
        *)  # fun fact!: excluding the ;; at the end of the line breaks the case statement
    esac

echo -e "
Error messages in Bash Scripts can be undesirable sometimes. 
You can choose to ignore them by redirecting the error message 
to the $(ColorGreen '/dev/null') file. 

$(ColorGreen '/dev/null') is pseudo-device that takes in text and then 
immediately discards it."

echo -e -n "
\033[36m[M/q]\033[0m "
read a 
    case ${a} in 
        M|m) menu ;;
        q) echo -e "Okay – Bye!" && exit 0 ;;
        *)  # fun fact!: excluding the ;; at the end of the line breaks the case statement
    esac

echo -e "
The above example can thus be rewritten as: 
$(ColorGreen 'ls --hello 2> /dev/null')"

echo -e -n "
\033[36m[M/q]\033[0m "
read a 
    case ${a} in 
        M|m) menu ;;
        q) echo -e "Okay – Bye!" && exit 0 ;;
        *)  # fun fact!: excluding the ;; at the end of the line breaks the case statement
    esac

echo -e "
Further, both $(ColorBlue 'STDOUT') and $(ColorBlue 'STDERR') can be redirected for the same
command or script. For example:
$(ColorGreen 'ls --hello > output.txt 2> error.txt')

$(ColorBlue 'STDOUT') and $(ColorBlue 'STDERR') don't need to be written to different files
necessarily – it's just neater that way. We can easily write 
either or to the same file: 
$(ColorGreen 'ls --hello > output.txt 2> output.txt')"

echo -e -n "
\033[36m[M/q]\033[0m "
read a 
    case ${a} in 
        M|m) menu ;;
        q) echo -e "Okay – Bye!" && exit 0 ;;
        *)  # fun fact!: excluding the ;; at the end of the line breaks the case statement
    esac

echo -e "
We can even further refactor the above command to something
shorter: 
$(ColorGreen 'ls --hello > output.txt 2>&1')
"
