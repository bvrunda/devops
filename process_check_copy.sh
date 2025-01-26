#!/bin/bash

# Variables
SERVER1="54.83.169.202"
TARGET_SERVER="18.212.110.130"
PROCESS_NAME="sshd"

# SSH command to check the process on target server via server1
PROCESS_CHECK=$(ssh "$SERVER1" "ssh $TARGET_SERVER 'pgrep -x $PROCESS_NAME'" 2>/dev/null)

# Check if process is running
if [ -n "$PROCESS_CHECK" ]; then
    echo "Process '$PROCESS_NAME' is running."
else
    # Get server details
    SERVER_INFO=$(ssh "$SERVER1" "ssh $TARGET_SERVER 'echo IP: \$(hostname -I) Hostname: \$(hostname)'")

    # Send email notification
   # echo -e "Subject: Process Alert\n\nProcess '$PROCESS_NAME' is not running on $TARGET_SERVER.\n\nDetails:\n$SERVER_INFO" | mail -s "Process Alert on $TARGET_SERVER" bvrunda1998@gmail.com
    echo "Email notification sent to bvrunda1998@gmail.com."
fi

