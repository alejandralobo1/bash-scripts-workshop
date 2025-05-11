#!/bin/bash

# Password validation using while loop and regex

while true
do
    echo "Enter a password:"
    read -s password

    if [[ ${#password} -lt 8 ]]; then
        echo "Password must have at least 8 characters."
    elif [[ ! "$password" =~ [A-Z] ]]; then
        echo "Password must contain at least one uppercase letter."
    elif [[ ! "$password" =~ [0-9] ]]; then
        echo "Password must contain at least one digit."
    else
        echo "Password is valid."
        break
    fi
done

