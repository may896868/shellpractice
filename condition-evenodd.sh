#!/bin/bash

echo "enter the number"
read NUMBER

if [ $((NUMBER % 2)) -eq 0 ]; then
    echo "the given number $NUMBER is even number"
else 
    echo "the iven number $NUMBER is odd number"
fi