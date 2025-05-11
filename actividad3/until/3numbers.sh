#!/bin/bash

#Asks for three valid integers and demostrate basic operations

count=0

until [[ $count -eq 3 ]]; do
    echo "Enter an integer:"
    read num
    if [[ "$num" =~ ^-?[0-9]+$ ]]; then
        values[$count]=$num
        ((count++))
    else
        echo "Invalid input. Please enter an integer."
    fi
done

a=${values[0]}
b=${values[1]}
c=${values[2]}

sum=$((a + b + c))
product=$((a * b * c))

#Max and min
max=$a
min=$a
for val in "${values[@]}"; do
    [[ $val -gt $max ]] && max=$val
    [[ $val -lt $min ]] && min=$val
done

echo "Sum: $sum"
echo "Product: $product"
echo "Maximum value: $max"
echo "Minimum value: $min"
