#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SHELL_SCRIPT=$(echo $0 | cut -d "." -f1)
LOGFILE="/temp/$SHELL_SCRIPT-$TIMESTAMP.log"
R="\e[31m"
G="\e[32m"
N="\e[0m"

VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo -e "$2 is $R FAILURE $N."
        exit 1
    else
        echo -e "$2 is $G SUCCESS $N"
    fi
}

if [ "$USERID" -ne 0 ]; then
    echo "Please run this script with root user or using sudo."
    exit 1
else
    echo "You are a super user."
fi

dnf install mysql -y &>>$LOGFILE
VALIDATE $? "Installing MySQL."

dnf install git -y &>>$LOGFILE
VALIDATE $? "Installing GIT."

dnf install Dockerr -y &>>$LOGFILE
VALIDATE $? "Installing Docker."