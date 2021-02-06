#!/bin/bash

a=3

if [ $a == 1 ]
then
	echo "a is 1"
elif [ $a == 2 ]
then
	echo "a is 2"
else
	echo "a is not 1 or 2"
fi

#===========================================
option="${1}" 
case ${option} in 
  -f) FILE="${2}" 
      echo "File name is $FILE"
      ;;
  -d) DIR="${2}"
      echo "Dir name is $DIR"
      ;;
  *)
      echo "`basename ${0}`:usage: [-f file] | [-d directory]"
      exit 1 # Command to come out of the program with status 1
      ;;
esac
