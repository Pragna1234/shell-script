#!/bin/bash


VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo "$2 is FAILURE."
        exit 1
    else
        echo "$2 is SUCCESS"
    fi
}

sudo dnf install mysql -y
VALIDATE $? "Installing MySQL."

sudo dnf install git -y
VALIDATE $? "Installing GIT."
