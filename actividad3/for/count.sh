#!/bin/bash

#Counters
positive=0
negative=0
zero=0

#Loop through all parameters
for num in "$@"
do
    #validation
    if [[ "$num" =~ -?[0-9]+$ ]]; then
        if [[ $num -gt 0 ]]; then
            ((positive++))
        elif [[ $num -lt 0 ]]; then
            ((negative++))
        else
            ((zero++))
        fi
    else
       echo "Invalid value: $num"
    fi 
done

#Show results
echo "Positive numbers: $positive"
echo "Negative numbers: $negative"
echo "Zeros: $zero"
