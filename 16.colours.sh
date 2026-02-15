#!/bin/bash

set -o pipefail

LOGS_FOLDER=/var/log/Shell-Script
LOGS_File=/var/log/Shell-Script/$0.log

R="\e[31m"
G="\e[32m"
Y="\e[33m"
B="\e[34m"
N="\e[0m"

Userid=$(id -u)

if [ $Userid != 0 ]; then
   echo "$Y please run the script with sudo permissions $N" 
   exit 1
fi

if [ $# -eq 0 ]; then
  echo "$Y please provide the package name to install $N"
  exit 1
fi

mkdir -p $LOGS_FOLDER

VALDIATE() {
    if [ $1 -eq 0 ]; then
    echo "$2...$G Success $N" 
    else
    echo "$2...$R Failure $N" 
    fi
}

for package in $@
   do
     dnf list installed | grep $package &>> $LOGS_File
     if [ $? -ne 0 ]; then
        dnf install $package -y &>> $LOGS_File
        VALDIATE $? "Installing $package"
   else
     echo "$Y $package $N is already installed"
     fi
   done