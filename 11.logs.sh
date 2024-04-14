#!/bin/bash

ID=$(id -u)

TIMESTAMP=$(date +%F-%H-%M-%S)

R="\e[31m"
G="\e[32m"
N="\e[0m"

LOGFILE="/tmp/$0-$TIMESTAMP.log"


VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "ERROR: $2 ...... $R FAILED $N"
        exit 1
    else
        echo "$2 ... $G SUCCESS $N"
    fi

}

if [ $ID -ne 0 ]
then
    echo "ERROR: your are not root user"
    exit 1
else
    echo "your root user"
fi

yum install mysql -y  &>> $LOGFILE

VALIDATE $? "installing mysql"

yum install git -y  &>> $LOGFILE

VALIDATE  $? "installing git"