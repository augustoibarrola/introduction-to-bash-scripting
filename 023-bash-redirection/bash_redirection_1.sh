#!/bin/bash 


echo -e "
When we run a command like ls, cat, etc, you get some output on the terminal.

If you write a wrong command, pass a wrong flag or a wrong command-line argument,
you get error output on the terminal. In both the cases, you are given some text.

This text is an 'identifier' and is known as a File Descriptor (fd).

In Linux, there are 3 File Descriptors: STDIN (0), STDOUT (1), and STDERR (2).

STDIN (fd: 0) : Manages the input in the terminal
STDOUT (fd: 1) : Manages the output text in the terminal
STDERR (fd: 2) : Manages the error text in the terminal
"
