# !/bin/bash

USERID=$(id -u)
VALIDATE(){
if [ $? -ne 0 ];then
   echo "$1 is failure"
   exit 1
else
   echo "$2 is success"   
fi   
}

if [ $USERID -ne 0 ]; then
    echo "Please run this script with root access"
    exit 1
else
    echo "You are a super user."
fi

dnf install mysql-server -y
VALIDATE $? "MySql is installing"


dnf install git -y
VALIDATE $? "GIT is Installing"
