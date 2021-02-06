#!/bin/bash

count=0

while [ $count -le 10 ]
do
  echo "Count: $count"
  count=`expr $count + 1`
done
