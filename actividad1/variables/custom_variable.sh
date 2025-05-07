#!/bin/bash

read -p "Enter the name of the variable: " variable_name
read -p "Enter the value for $variable_name: " variable_value

declare "$variable_name=$variable_value"

echo "The variable $variable_name has the value: ${!variable_name}"
