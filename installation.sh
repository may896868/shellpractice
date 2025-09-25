#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR : PLEASE RUN THIS SCRIPT  WITH root privileges"
    exit 1
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "Error : installing mysql is failed"
    exit 1
else
    echo "installing mysql is success"
fi

dnf install nginx -y

if [ $? -ne 0 ]; then
    echo "Error : installing nginx is failed"
    exit 1
else
    echo "installing mysql is success"
fi

dnf install python3 -y

if [ $? -ne 0 ]; then
    echo "Error : installing python3 is failed"
    exit 1
else
    echo "installing python3 is success"
fi