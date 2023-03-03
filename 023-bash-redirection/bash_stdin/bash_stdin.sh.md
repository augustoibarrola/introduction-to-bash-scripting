```bash
#!/bin/bash 

# echo -e "
# When you enter some input text for a command that asks for it, 
# you are actually entering the text to the $(ColorBlue 'STDIN') file 
# descriptor.

# Run the $(ColorGreen 'cat') command without any command-line 
# arguments. It may seem that the process has paused but in fact 
# it's $(ColorGreen 'cat') asking for $(ColorBlue 'STDIN'). $(ColorGreen 'cat') is a simple program and will 
# print the text passed to $(ColorBlue 'STDIN').

# However, you can extend the use
# case by redirecting the input to the commands that take $(ColorBlue 'STDIN').
# "

echo -e "\n\033[1mSTDIN :: STANDARD INPUT :: (fd: 0)\033[0m"

cat << EOF

When you enter some input text for a command that asks for it, 
you are actually entering the text to the $(ColorBlue 'STDIN') File 
Descriptor.

Run the $(ColorGreen 'cat') command without any command-line 
arguments. It may seem that the process has paused but in fact 
it's $(ColorGreen 'cat') asking for $(ColorBlue 'STDIN'), or 
"Standard Input". 
$(ColorGreen 'cat') is a simple program and 
will print the text passed to $(ColorBlue 'STDIN').

However, you can extend the use
case by redirecting the input to the commands that take $(ColorBlue 'STDIN'). #??? What commands exactly take STDIN?  

EOF
```

