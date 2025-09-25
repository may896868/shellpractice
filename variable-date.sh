#!/bin/bash

VALUE =$(date)
echo "date :: $VALUE"

START_TIME=$(date +%s)
echo "start time :: $START_TIME"

sleep 10

END_TIME=$(date +%s)
echo "end time :: $END_TIME"


TOTAL_TIME=$(($END_TIME-$STRT_TIME))
echo "script executed time :: $TOTAL_TIME seconds"