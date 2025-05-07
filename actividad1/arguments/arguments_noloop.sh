#!/bin/bash

#Print every arguments one per line not use for or if
echo "$@" | tr ' ' ' \n'

#See the quantity
echo "Total number of arguments: $#"
