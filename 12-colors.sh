#!/bin/bash

# Define variables
USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE="/tmp/$SCRIPT_NAME-$TIMESTAMP.log"

R="\e[91m" # Red color
G="\e[92m" # Green color
N="\e[0m"  # Reset color

echo "Script started executing at : $TIMESTAMP"
# Function to validate command execution
VALIDATE() {
    if [ $1 -ne 0 ]; then
        echo -e "$2 $R FAILURE $N" 
        exit 1
    else
        echo -e "$2 $G SUCCESS $N" 
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
dnf install mysql-server -y &>>$LOGFILE
VALIDATE $? "MySQL installation"

# Install Git
dnf install git -y &>>$LOGFILE
VALIDATE $? "Git installation"

# Install Docker
dnf install dockerr -y &>>$LOGFILE
VALIDATE $? "Docker installation"
