#!/bin/bash

# Define variables
USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0| cut -d "." -f1)
LOGFILE="/tmp/$SCRIPT_NAME-$TIMESTAMP.log"

# Function to validate command execution
VALIDATE() {
    if [ $1 -ne 0 ]; then
        echo "$2 has failed" >> "$LOGFILE"
        exit 1
    else
        echo "$2 was successful" >> "$LOGFILE"
    fi
}

# Check if script is executed with root privileges
if [ $USERID -ne 0 ]; then
    echo "Please run this script with root access"
    exit 1
else
    echo "You are a super user."
fi

# Install MySQL server
dnf install mysql-server -y
VALIDATE $? "MySQL installation"

# Install Git
dnf install git -y
VALIDATE $? "Git installation"
