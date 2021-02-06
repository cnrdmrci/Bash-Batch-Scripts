#!/bin/bash

while getopts ":u:a:f:h" flag;
do
  case "${flag}" in
    u) username=${OPTARG};;
    a) age=${OPTARG};;
    f) fullname=${OPTARG};;
    h) echo "[-u username] | [-a age] | [-f fullname]";;
    \?) echo "Invalid option: -$OPTARG" 1>&2;;
    : ) echo "Invalid option: -$OPTARG requires an argument" 1>&2;;
  esac
done

echo "Username: $username";
echo "Age: $age";
echo "Full Name: $fullname";
