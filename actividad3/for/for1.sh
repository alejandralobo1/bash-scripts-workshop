#!/bin/bash

#Removes comments line

# Ask for the name of the file
echo "Enter the file name: "
read file

#Check if the file exists
if [[ ! -f "$file" ]] then
   echo "File does not exist. "
   exit 1
fi

#Remove lines start #
new_file="cleaned_$file"
grep -v '^\s*#' "$file" > "$new_file"

#Ask for a word or phrase
echo "Enter a word or phrase to search: "
read keyword

if grep -q "$Keyword" "$new_file"; then
   echo "The word/phrase was found."
else 
   echo "The word/phrase was not found."
fi

#Ask for a sentencee to append
echo "Enter a sentence to add at the end of the file:"
read sentence
echo "$sentence" >> "$new_file"

echo "Updated file saved as: $new_file"
