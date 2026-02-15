#!/bin/bash

set -o pipefail
#set -e
trap 'echo "Script have been Interrupted by pressing CTRL+C ; exit 1"' 'SIGINT'

LOGS_FOLDER=/var/log/Shell-Script
LOGS_File=/var/log/Shell-Script/$0.log

R="\e[31m"
G="\e[32m"
Y="\e[33m"
B="\e[34m"
N="\e[0m"

Userid=$(id -u)

if [ $Userid != 0 ]; then
   echo -e "$Y please run the script with sudo permissions $N" 
   exit 1
fi

if [ $# -eq 0 ]; then
  echo -e "$Y please provide the package name to install $N"
  exit 1
fi

mkdir -p $LOGS_FOLDER

toucchff file1.txt

VALDIATE() {
    if [ $1 -eq 0 ]; then
    echo -e "$2...$G Success $N" 
    else
    echo -e "$2...$R Failure $N" 
    fi
}

for package in $@
   do
     dnf list installed | grep $package &>> $LOGS_File
     if [ $? -ne 0 ]; then
        dnf install $package -y &>> $LOGS_File
        VALDIATE $? "Installing $package"
   else
     echo -e "$Y $package $N is already installed"
     fi
   done