#!/bin/bash

Sum() {
  echo "Sum: $1 + $2"
  return `expr $1 + $2`
}

Sum 1 2
result=$?

echo "Result: $result"
