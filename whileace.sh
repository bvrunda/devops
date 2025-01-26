#!/bin/bash

# Read a single number from the user
echo "Enter a number:"
read num

num1=1

# Print numbers in acending order using while loop
while [ $num1 -le $num ]; do
  echo $num1
  num1=`expr $num1 + 1`
done

