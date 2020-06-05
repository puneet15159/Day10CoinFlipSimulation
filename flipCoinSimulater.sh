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

	echo "its a tie, continue till we have winner"
	t=0
	h=0
	result=0
  	while (( result < 2 ))
	do
	    flip=$((RANDOM%2))
	    if [[ flip -eq 1 ]]
	    then
 		((++t))
 	    else
	    
		((++h))
	    fi

	    result=t-h
	    if [[ result -ge 2 ]]
 	    then
		echo "we have winner : tails"
		break
	    fi

 	    result=h-t
            if [[ result -ge 2 ]]
            then
                echo "we have winner : heads"
                break
            fi

	done
fi

