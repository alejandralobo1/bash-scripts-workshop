#!/bin/bash

#Read words until the user write ---- :> and save in a file.txt

#Destination file
echo "Enter the destination file name: "
read file

#Check if the file exists
if [[ ! -e "$file" ]]; then
   touch "$file"
fi

#Read words until the user write :>
while true
do
   echo "Enter a word (type :> to finish):"
   read word
   if  [[ "$word" == ":>" ]]; then
        break
   fi
   echo "$word" >> "$file"
done

echo "Words saved in: $file"
