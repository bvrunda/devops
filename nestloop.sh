??? from here until ???END lines may have been inserted/deleted
#!/bin/bash
  
echo "dispaly all files"
ls

# Variables
FILE_NAME="process_check.sh"

# command to check the file or not
FILE_CHECK=[[ -f "$FILE_NAME" ]]

# Check if process is running
if [  "$FILE_CHECK" ]; thenif [[ -f $file_name ]]; then
    # Reverse the file content and save to a new file
    tac "$file_name" | rev > "${file_name}_reversed"
    echo "Reversed content saved to ${file_name}_reversed"
e
    echo "This is file'$FILE_NAME'."
else
   echo "Not a file"
???END
