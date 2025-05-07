#!/bin/bash

echo "Global variables:"
echo "USER: $USER"
echo "HOME: $HOME"
echo "SHELL: $SHELL"
echo "PWD: $PWD"
echo "PATH: $PATH"

echo ""
echo "Shell arguments passed"
echo "$@"

echo ""
echo "Return value of the last command"
echo $?

echo ""
echo "PID of the current Shell"
echo $$
