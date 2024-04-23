#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "Please run this script with root access"
    exit 1
else
    echo "You are a super user."
fi

dnf install mysql-server -y

if [ $? -ne 0 ]; then
    echo "MYSQL installation has failed."
    exit 1
else
    echo "Installation of MYSQL was successful."
fi

dnf install git -y

if [ $? -ne 0 ]; then
    echo "Git installation has failed."
    exit 1
else
    echo "Installation of Git was successful."
fi

