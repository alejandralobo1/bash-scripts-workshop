#!/bin/bash

# Interactive menu with case structure

while true
do
    echo "----- MENU -----"
    echo "1) Show current date and time"
    echo "2) Check if a file exists"
    echo "3) Exit"
    echo "Choose an option:"
    read option

    case $option in
        1)
            date
            ;;
        2)
            echo "Enter the file name:"
            read filename
            if [[ -e "$filename" ]]; then
                echo "The file exists."
            else
                echo "The file does not exist."
            fi
            ;;
        3)
            echo "Exiting..."
            break
            ;;
        *)
            echo "Invalid option. Please enter 1, 2 or 3."
            ;;
    esac
done

