#!/bin/bash

number=$1

rem=$(( $number % 2 ))

if [ $rem -eq 0 ]; then

  echo "$number is even number"

  else

  echo "$number is odd number"

fi