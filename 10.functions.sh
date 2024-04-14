#!/bin/bash

ID=$(id -u)

VALIDATE(){
    if [ $? -ne 0 ]
    then
        echo "ERROR: installing my sql is failed"
        exit 1
    else
        echo "installing mysql is success"
    fi

}

if [ $ID -ne 0 ]
then
    echo "ERROR: your are not root user"
    exit 1
else
    echo "your root user"
fi

yum install mysql -y

VALIDATE

yum install git -y

VALIDATE