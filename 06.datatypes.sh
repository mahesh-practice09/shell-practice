#!/bin/bash

echo "Number of Arguments passed: $#"
echo "Script Name: $0"
echo "All arguments passed to Script: $@"
echo "Current Working Directory: $PWD"
echo "Who is running the Script: $USER"
echo "Home Directory of the Current User: $HOME"
echo "PID of the script: $$"
sleep 100 &
echo "PID of the recently executed background process: $!"
echo "All args passed to the Script: $*"
