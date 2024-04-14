#!/bin/bash

NUMBER=$1

if [ $NUMBER -gt 100 ]
then
    echo "given number is $NUMBER is grater then 100"
else
    echo "given number is $NUMBER is not grater then 100"
fi