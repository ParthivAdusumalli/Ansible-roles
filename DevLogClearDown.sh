#!/bin/bash
$(find /home/ec2-user/DevEnvLogs -type f -name "*.log" -mtime +60 > LogResults.txt)

while read -r line; do
        if rm -f "$line"; then
         echo "Deleted: $line"
        else
         echo "Failed to delete: $line"
        fi
    done < LogResults.txt