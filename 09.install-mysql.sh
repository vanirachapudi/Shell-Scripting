#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "ERROR: your are not root user"
    exit 1
else
    echo "your root user"
fi

yum install mysqllll -y

if [ $? -ne 0 ]
then
    echo "ERROR: installing my sql is failed"
    exit 1
else
    echo "installing mysql is success"
fi