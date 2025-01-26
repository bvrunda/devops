#!/bin/bash

if [ $# -ne 2 ]; then
	echo "please enter only two arguments"
	exit
fi
if [ $1 -gt $2 ]; then
	echo "$1 is biggest number"
else
	echo "$2 is biggest number"
fi
