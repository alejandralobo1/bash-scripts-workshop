#!/bin/bash

# This script ask a valid directory and show the information about them

until [[ -d "$dir" ]]; do
    echo "Enter a valid directory path:"
    read dir
    if [[ ! -d "$dir" ]]; then
        echo "Not a valid directory."
    fi
done

#SHow permissions
echo "Permissions: $(ls -ld "$dir" | cut -d ' ' -f1)"

#SHow the numbers of files and folders
num_elements=$(ls -1A "$dir" | wc -l)
echo "Number of files and folders: $num_elements"

#List of numbers
echo "Contents of the directory:"
ls -A "$dir"

