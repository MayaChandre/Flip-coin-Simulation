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

Heads=0
tails=0
flag=0
while [ $head != 21 ] && [ $tail ! = 21 ];
do
       toss=$((RANDOM%2))
    if [[ $toss -eq 0 ]];then
         head=$(($head+1))
else
        tail=$(($tail+1))
fi

if [[ $head -eq 20 ]] &&  [[ $tail -eq 20 ]];then
     flag=1
     break
fi 
done
if [[ $head -eq 21 ]] &&  [[ $flag -eq  0 ]];then
     echo $'n/ '"head wins $heads times"
      echo "head wins by $(($head=$tail)) tosses"
elif [[ $tail -eq 21 ]] &&  [[ $flag -eq  0 ]];then
     echo $'n/' "tail wins $tail times"
      echo "tail wins by $(($tail=$head)) tosses"
elif [[ $flag -eq 1 ]];then
     echo $'n/'"Both are Tied"
fi



Heads=0
tails=0
flag=0

while [ $head != 21 ] && [ $tail ! = 21 ];
do
       toss=$((RANDOM%2))
    if [[ $toss -eq 0 ]];then
         head=$(($head+1))
else
        tail=$(($tail+1))
fi

if [[ $head -eq 20 ]] &&  [[ $tail -eq 20 ]];then
     flag=1
     diff=0
     while [ $diff != 20 ];do
         toss=$((RANDOM%2))
if [[ $toss -eq 0 ]];then
         head=$(($head+1))
else
        tail=$(($tail+1))
fi


if [[ $head -gt $tail ]];then
   diff=(($head - $tail))
else
    diff=(($tail - $head))
fi
done

  break
fi
done

  
if [[ $head -eq 21 ]] &&  [[ $flag -eq  0 ]]; then
     echo $'n/ '"head wins $heads times"
      echo "head wins by $(($head=$tail)) tosses"
elif [[ $tail -eq 21 ]] &&  [[ $flag -eq  0 ]]; then
     echo $'n/' "tail wins $tail times"
      echo "tail wins by $(($tail=$head)) tosses"
elif [[ $diff -eq 2 ]]  &&  [[ $head -gt  $tail ]]; then
     echo $'n/'"Both are Tied"
     echo "Tosses continued till the difference was $diff"
     echo "Head won with $head tosses"
     echo "Tail had $tail tosses" 
elif [[ $diff -eq 2 ]]  &&  [[ $head -gt  $tail ]]; then
     echo $'n/'"Both are Tied"
     echo "Tosses continued till the difference was $diff"
     echo "Head won with $head tosses"
     echo "Tail had $tail tosses"
fi
elif [[ 
