#!/bin/bash

countertails=0
counterheads=0
while (( 1 ))
do
 flip=$((RANDOM%2))
 if [[ flip -eq 0 ]]
 then
	#echo "heads"
	((counterheads++))
 else
	#echo "tails"
	((countertails++))
 fi

 if [[ counterheads -eq 21 ]] || [[ countertails -eq 21 ]]
 then
 	break
 fi

done

echo "head count: $counterheads"
echo "tails count: $countertails"

if [[ counterheads -gt countertails ]]
then
	result=$(($counterheads-$countertails))
        echo "heads won by: $result"
elif [[ countertails -gt counterheads ]]
then
	result=$(($countertails-$counterheads))
	echo "tails won by: $result"
else

	echo "its a tie"
fi
