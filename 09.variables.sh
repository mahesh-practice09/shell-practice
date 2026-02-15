#!/bin/bash

NUM1=100
NUM2=MaheshGanji

SUM=$(($NUM1 + $NUM2))

echo "$SUM"

FRUITS=(Apple,Banana,Orange)

echo "Fruits are: ${FRUITS[@]}"
echo "First Fruit is: ${FRUITS[0]}"
echo "Second Fruit is: ${FRUITS[1]}"
echo "Thris Fruit is: ${FRUITS[2]}"