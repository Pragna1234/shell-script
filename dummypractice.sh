# !/bin/bash
User=$(id -u)
if[ $user -ne 0 ]
then 
   echo "please change to rootuser"
   exit 1
else
   echo "you are super user"
fi

dnf install mysql-server -y
if[ $? -ne 0 ]
then
   echo "your MYSQL installation is failure"
   exit 1
else
   echo "your MYSQL installation is success"
fi

dn infstall git -y
if[ $? -ne 0 ]
then
   echo "your GIT installation is failure"
   exit 1
else
   echo "your GIT installation is success"
fi