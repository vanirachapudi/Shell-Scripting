#!/bin/bash

ID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "ERROR: $2 ...... FAILED"
        exit 1
    else
        echo "$2 ... SUCCESS"
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

VALIDATE $? "installing mysql"

yum install git -y

VALIDATE  $? "installing git"