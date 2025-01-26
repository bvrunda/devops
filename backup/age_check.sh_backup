#!/bin/bash

sed '1d' $1 > temp

while read line
do
age=`echo $line | awk -F " " '{print$NF}'`

if [ $size -gt 60 ]; then
emp_name=`echo $line | awk -F  " " '{print$1}'`
echo "emp_name"
fi
done < temp
