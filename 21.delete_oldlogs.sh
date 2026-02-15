#!/bin/bash

LOGS_Folder=/var/log
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

if [ ! -d $LOGS_Folder ]; then
    echo -e "$Y $LOGS_Folder does not exist $N"
    exit 1
fi

Files_to_Delete=$(find $LOGS_Folder -name *.log -type f -mtime +14)

if [ -z "$Files_to_Delete" ]; then
   echo -e "$Y There are no files to delete which are older than 14 days $N"
   else
       while IFS= read -r Filepath; do
       echo "delete filepath: $filepath"
       rm -f $filepath
       echo "Deleted filepath: $filepath"
       done <<< $Files_to_Delete
fi