#!/bin/bash

# Read a single number from the user
echo "Enter a number:"
read num

num1=$num

# Print numbers in descending order using while loop
while [ $num1 -ge 1 ]; do
  echo $num1
  num1=`expr $num1 - 1`
done

