#!/bin/bash

USERID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"



if [ $USERID -ne 0 ]; then
    echo "ERROR : PLEASE RUN THIS SCRIPT  WITH root privileges"
    exit 1
fi

VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo " installing $2 is $R FAILED $N"
        exit 1
    else
        echo "installing $2 is $R SUCCESS $N"
    fi
}

dnf list installed mysql
if [ $? -ne 0 ]; then
    dnf install mysql -y
    VALIDATE $? "mysql"
else
    echo -e "my sql already exist $Y SKIPPING $N"
fi

dnf list installed nginx
if [ $? -ne 0 ]; then
    dnf install nginx -y
    VALIDATE $? "nginx"
else
    echo -e "nginx already exist $Y SKIPPING $N"
fi

dnf list installed python3
if [ $? -ne 0 ]; then
    dnf install python3 -y
    VALIDATE $? "python3"
    else
    echo -e "python already exist $Y SKIPPING $N"
fi