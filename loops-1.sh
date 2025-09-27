#!/bin/bash

USERID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
LOGS_FOLDER="/var/log/shesllscript"
SCRIPT_NAME=$( echo $0 | cut -d "." -f1 )
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log"

mkdir -p $LOGS_FOLDER
echo " script started executed at $(date)"

if [ $USERID -ne 0 ]; then
    echo -e "$RERROR : PLEASE RUN THIS SCRIPT  WITH root privileges$N" | tee -a $LOG_FILE
    exit 1
fi

VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo -e " installing $2 is $R FAILED $N" | tee -a $LOG_FILE
        exit 1
    else
        echo -e "installing $2 is $R SUCCESS $N" | tee -a $LOG_FILE
    fi
}

# $@

for package in $@
do
    echo "package is : $package"
done