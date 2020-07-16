#!/bin/bash

read -p "enter no of times you want to play : " number
headWon=0
tailWon=0
count=0
while [ $count -lt $number ]
do
	result=$((RANDOM%2))
	if [[ $result -eq 1 ]]
	then
		((headWon++))
	else
		((tailWon++))
	fi
	((count++))
done

differenceOfHead=$(($headWon-$tailWon))
differenceOfTail=$(($tailWon-$headWon))

while [ $differenceOfHead -lt 2 ] && [ $differenceOfTail -lt 2 ]
do
        result=$((RANDOM%2))
        if [[ $result -eq 1 ]]
        then
                ((headWon++))
        else
                ((tailWon++))
        fi
        ((count++))
	differenceOfHead=$(($headWon-$tailWon))
	differenceOfTail=$(($tailWon-$headWon))
done

if [[ $headWon -gt $tailWon ]]
then
	echo "head won by $differenceOfHead"
else
	echo "tail won by $differenceOfTail"
fi
