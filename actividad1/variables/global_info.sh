#!/bin/bash

read -p "Enter the name of a global variable (e.g. HOME, USER ,SHELL, PATH, PWD): " global_variable

echo "The value of $global_variable is: ${!global_variable}"

echo "Arguments passed to the script: $@"
echo "Return value of the last command: $?"
echo "Current Shell PID: $$"
