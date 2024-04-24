#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SHELL_SCRIPT=$(echo $0 | cut -d "." -f1)
LOGFILE=/temp/$SHELL_SCRIPT-$TIMESTAMP.log
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

dnf install mysql -y &>> LOGFILE
VALIDATE $? "Installing MySQL."

dnf install git -y &>> LOGFILE
VALIDATE $? "Installing GIT."
