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
echo "head won  $headWon times"
echo "tail won  $tailWon times"

