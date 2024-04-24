#!/bin/bash

USERID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo "$2 is FAILURE."
        exit 1
    else
        echo "$2 is SUCCESS"
    fi
}

if [ "$USERID" -ne 0 ]; then
    echo "Please run this script with root user or using sudo."
    exit 1
else
    echo "You are a super user."
fi

sudo dnf install mysql -y
VALIDATE $? "Installing MySQL."

sudo dnf install git -y
VALIDATE $? "Installing GIT."
