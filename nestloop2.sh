#!/bin/bash
contents=($(ls))
mkdir backup
echo "directory created"

count=0
for content in "${contents[@]}"
do

# # Check if the file exists
 if [ -f $content ] && [ $count -lt 10 ]; then
	((count++))
	echo "This is a file ${content} count : $count"
	cp "$content" "backup/${content}_backup"
     else
        echo "$content."

fi

done
