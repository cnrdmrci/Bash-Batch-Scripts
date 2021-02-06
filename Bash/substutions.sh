#!/bin/bash

echo -e " Hello \n How are you "
echo

DATE=`date`
echo "Date is $DATE"
echo ''

#If var is null or unset, word is substituted for var. The value of var does not change
echo ${var:-"Variable is not set"}
echo "1 - Value of var is ${var}" #Substitute the value of var.
echo ''

#If var is null or unset, var is set to the value of word.
echo ${var:="Variable is not set"}
echo "2 - Value of var is ${var}"
echo ''

#If var is set, word is substituted for var. The value of var does not change.
unset var
echo ${var:+"This is default value"}
echo "3 - Value of var is $var"
echo ''

#If var is null or unset, message is printed to standard error. This checks that variables are set correctly.
var="Prefix"
echo ${var:+"This is default value"}
echo "4 - Value of var is $var"
echo ''

echo ${var:?"Print this message"}
echo "5 - Value of var is ${var}"
echo ''

