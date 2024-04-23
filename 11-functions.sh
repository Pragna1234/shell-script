#!/bin/bash

VALIDATE(){
echo "exit status: $1"
echo "what are you doing: $2"
}
if [ $USERID -ne 0 ]
then
    echo "Please run this script with root access."
    exit 1 # manually exit if error comes.
else
    echo "You are super user."
fi

dnf install mysql -y

VALIDATE $? "Installing mysql"
fi

dnf install git -y

VALIDATE $? "Installing GIT"
fi

