# !/bin/bash

USERID=$(id -u)

if [$USERID -ne 0]
then
    echo "Please run this script with root access"
    exit 1
else
     echo "You are super user."
fi


dnf install mysql-server -y

if [$? -ne 0]
then
    echo "MYSQL Installation is failed"
    exit 1
else
    echo "Installation of MYSQL is success."
fi


dnf install git -y
if [$? -ne 0]
then
   echo "git installion is failed."
   exit 1
else
   echo "git installation is success."
fi
