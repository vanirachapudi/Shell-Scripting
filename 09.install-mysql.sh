#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "ERROR: your are not root user"
    exit 1
else
    echo "your root user"
fi

yum install mysql -y