#!/bin/bash

echo "Welcome to flip coin simulation program"
toss=$((RANDOM%2))

if [[ $toss -eq 0 ]];
then
   echo Head Wins
else
    echo Tail wins
fi
