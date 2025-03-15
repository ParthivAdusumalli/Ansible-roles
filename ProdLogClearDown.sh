#!/bin/bash
$(find /home/ec2-user/ProdEnvLogs -type f -name "*.log" -mtime +30 > LogResults.txt)

while read -r line; do
        if rm -f "$line"; then
         echo "Deleted: $line"
        else
         echo "Failed to delete: $line"
        fi
    done < LogResults.txt