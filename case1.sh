#!/bin/bash

echo "choose an option"
echo "1.It will display the date"
echo "2.It will dispaly the uptime"
echo "3.It will dispaly the present working directory"
echo "4.EXIT"
echo "enter your option"

read option
case $option in
1)
date
;;
2)
uptime
;;
3)
pwd
;;
4)
echo "EXIT"
;;
esac
