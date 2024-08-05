#!/bin/bash

# Configuration
LOG_FILE="access.log"  # Path to your web server log file

# Number of 404 errors
echo "Number of 404 errors:"
grep " 404 " "$LOG_FILE" | wc -l

# Most requested pages
echo -e "\nMost Requested Pages:"
awk '{print $7}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -5

# IP addresses with the most requests
echo -e "\nIP Addresses with Most Requests:"
awk '{print $1}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -5

usage 
1)chmod +x log_analyzer.sh
2)./log_analyzer.sh