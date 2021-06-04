#!/bin/bash

echo "Welcome to flip coin simulation program"
toss=$((RANDOM%2))

if [[ $toss -eq 0 ]];
then
   echo Head Wins
else
    echo Tail wins
fi


Heads=0
tails=0
for (( i=0; i <20; i++ ));
do
 toss=$((RANDOM%2))
if [[ $toss -eq 0 ]];
then
    ((++heads))
else
    ((++tails))
fi
done
echo head won $heads times
echo tail won $tail times


