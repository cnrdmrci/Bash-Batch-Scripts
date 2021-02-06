#!/bin/bash

numbers="1 2 3 4 5 6"

for number in $numbers
do
  temp=`expr $number % 2`
  if [ $temp -eq 0 ]
  then
    echo "$number is an even number"
    continue
  fi
  echo "$number is an odd number"
  if [ $number -eq 3 ]
  then
    break
  fi
done
