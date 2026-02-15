#!/bin/bash


# -ne not equal
# -gt greater than
# -lt less than
# -eq equal

if [ $# -lt 1 ]; then
   echo "Provide the number to check if it is greater than 20"
   exit 1
   fi

NUM=$1

if [ $NUM -gt 20 ]; then
   echo "$NUM is greater then 20"
else
 if [ $NUM -eq 20 ]; then
   echo "$NUM is equal to 20"
else
   echo "$NUM is less than 20"
 fi
fi
