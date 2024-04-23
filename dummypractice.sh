#!/bin/bash
user=$(id -u)

if [ $user -ne 0 ]; then 
   echo "Please change to root user"
   exit 1
else
   echo "You are the super user"
fi

dnf install mysql-server -y
if [ $? -ne 0 ]; then
   echo "Your MySQL installation has failed"
   exit 1
else
   echo "Your MySQL installation was successful"
fi

dnf install git -y
if [ $? -ne 0 ]; then
   echo "Your Git installation has failed"
   exit 1
else
   echo "Your Git installation was successful"
fi
