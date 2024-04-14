#!/bin/bash

ID=$(id -u)

TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "scripted started excuted in $TIMESTAMP" &>> $LOGFILE

R="\e[31m"
G="\e[32m"
N="\e[0m"

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
    echo "ERROR:  you are not root user"
else
    echo "you are root user"
fi






for package in $@
do
    yum list installed $package &>> $LOGFILE
    if [ $? -ne 0 ]
    then
        yum install $package -y &>> $LOGFILE
        VALIDATE $? "installed of $package"
    else
        echo -e "$package is already install .. $G skipping $N"
