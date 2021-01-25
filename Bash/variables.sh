#!/bin/bash

#string variable
NAME="Caner"

#decimal variable
NUMBER=10

#make readonly
readonly NAME

#unset variable
LASTNAME="test"
unset LASTNAME

echo Name: $NAME
echo Number: $NUMBER
echo LastName: $LASTNAME

