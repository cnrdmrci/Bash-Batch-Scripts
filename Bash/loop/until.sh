#!/bin/bash

count=0

until [ $count == 10 ]
do
  echo Count: $count
  count=`expr $count + 1`
done
