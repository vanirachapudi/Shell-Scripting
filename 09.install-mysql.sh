#!/bin/bash

ID=$(id -u)

if[ $ID -ne 0 ]
then
    echo "ERROR: your ate not root user"
else
    echo "your root user"
fi