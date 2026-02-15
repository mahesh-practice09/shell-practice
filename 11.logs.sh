#!/bin/bash

set -o pipefail

LOGS_FOLDER=/var/log/Shell-Script
LOGS_File=/var/log/Shekk-Script/$0.log

Userid=$(id -u)

if [ $Userid != 0 ]; then
   echo "please run the script with sudo permissions" | tee -a $LOGS_File
   exit 1
fi

mkdir -p $LOGS_FOLDER

VALDIATE() {
    if [ $1 -eq 0 ]; then
    echo "$2...Success" 
    else
    echo "$2...Failure" 
    fi
}


dnf install nginx -y | tee -a $LOGS_File
VALDIATE $? "Installing nginx"

dnf install mysql -y | tee -a $LOGS_File
VALDIATE $? "Installing mysql"

dnf install nodejs -y | tee -a $LOGS_File
VALDIATE $? "Installing nodejs"