#!/bin/bash

number=$1

if [ $# == 0 ]; then
    echo "please provide the number to check if it is even or odd"
    exit
    fi

rem=$(( $number % 2 ))

if [ $rem -eq 0 ]; then

  echo "$number is even number"

  else

  echo "$number is odd number"

fi