#!/bin/bash

body=`echo -e "this server disk is more than 80%, please take action on this"`

size= df -h . | tail -l | awk -F " " '{print(NF-1)}' | sed 's/%//g'

if [ $size -gt 20 ];then

echo $body | mail -s "sever memory full" bvrunda1998@gmail.com

fi
