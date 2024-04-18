# !/bin/bash

USERID=$(id -u)

if [$USERID -ne 0]
then
echo "Please run this command with super user"
exit 1
else
echo "proceed with next command."
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
else
echo "git installation is success."
fi
