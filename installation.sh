#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0]; then
    echo "ERROR : PLEASE RUN THIS SCRIPT  WITH root privileges"
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "Error : installing mysql is failed"
else
    echo "installing mysql is success"
fi
