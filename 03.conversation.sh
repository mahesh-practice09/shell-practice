#!/bin/bash

if [ $# == 0 ]; then
   echo "please provide two names as scriptname name1 name2"
   exit 1
   fi

Ramesh=$1
Sreevani=$2

echo "Sreevani::Hi Ramesh" 
echo "Ramesh::Hi Sreevani"
echo "Sreevani::How are you Ramesh"
echo "Ramesh::I am good how are Sreevani"