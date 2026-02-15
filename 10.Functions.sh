#!/bin/bash

Userid=$(id -u)

if [ $Userid != 0 ]; then
   echo "please run the script with sudo permissions"
   exit 1
fi

VALDIATE() {
    if [ $1 -eq 0 ]; then
    echo "$2...Success"
    else
    echo "$2...Failure"
    fi
}


dnf install nginx -y
VALDIATE $?,Installing nginx


