#!/bin/bash

echo "All variables passed to the script : $@"
echo "All variables passed to the script : $*"
echo "script name : $0"
echo "current directory : $PWD"
echo "User name : $USER"
echo "user home dir : $HOME"
echo "pid of thi script : $$"

sleep 50 &

echo "pid of the last command in background : $!"
echo "exit code for the program : $?"