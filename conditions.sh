#!/bin/bash

NUMBER=$1

if [ $NUMBER -lt 10 ]; then
    echo " the given number $NUMBER is lessthan 10 "
elif [ $NUMBER -eq 10 ]; then
    echo " the given number $NUMBER is equal to 10 "
else
    echo " the given number $NUMBER is greater than 10 "
fi