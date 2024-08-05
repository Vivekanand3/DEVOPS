#!/bin/bash

# Configuration
URL="http://your-application-url.com"
EXPECTED_STATUS=200
LOG_FILE="uptime_check.log"

# Check application status
status_code=$(curl -o /dev/null -s -w "%{http_code}\n" "$URL")

# Create or append to the log file
echo "Uptime Check - $(date)" >> "$LOG_FILE"

# Determine if the application is 'up' or 'down'
if [ "$status_code" -eq "$EXPECTED_STATUS" ]; then
    echo "Application is UP. Status Code: $status_code" | tee -a "$LOG_FILE"
else
    echo "Application is DOWN. Status Code: $status_code" | tee -a "$LOG_FILE"
fi

usage
1)chmod +x uptime_check.sh
2)./uptime_check.sh
