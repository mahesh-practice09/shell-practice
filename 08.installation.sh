#!/bin/bash

Userid=$(id -u)

if [ $Userid != 0 ]; then
   echo "please run the script with sudo permissions"
fi


dnf install nginx -y

if [ $? -eq 0 ]; then
   echo "nginx installation is success"
  else
   echo "nginx installation is failure"
fi

dnf install nodejs -y
if [ $? -eq 0 ]; then
   echo "nodejs installation is success"
   else
   echo "nodejs installation is failure"
fi

dnf install mysql -y
if [ $? -eq 0 ]; then
   echo "mysql installation is success"
   else
   echo "mysql installation is failure"
fi