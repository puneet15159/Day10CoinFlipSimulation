#!/bin/bash

counter=10

while (( counter > 0 ))
do
flip=$((RANDOM%2))
if [[ flip -eq 0 ]]
then
	echo "heads"
else
	echo "tails"
fi

((counter--))
done
