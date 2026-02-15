#!/bin/bash

START_TIME=$(date +%s)

sleep 10

END_TIME=$(date +%s)

TOTAL_TIME=$(( $START_TIME - $END_TIME ))


echo "Total Time to execute the Script: $TOTAL_TIME"