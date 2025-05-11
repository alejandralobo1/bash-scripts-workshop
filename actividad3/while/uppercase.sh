#!/bin/bash

#This script check user in uppercase

echo "Users with uppercase letters in their usernames: "
#Check users with uppercase
cut -d: -f1 /etc/passwd | grep '[A-Z]'

#Enter user while this are true
while true
do
   echo "Enter a username: "
   read username
   # Check is this user exist in the system
   if getent passwd "$username" > /dev/null; then
      echo "User found. SHowing information: "
      getent passwd "$username"
      break
   else
      echo "Invalid username. Try again. "
   fi
done
