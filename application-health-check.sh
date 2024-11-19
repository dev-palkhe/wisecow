#!/bin/bash

# Configuration
URL="http://your-application-url.com"
STATUS_OK=200
STATUS_DOWN=503

# Check application status using curl
STATUS_CODE=$(curl -s -o /dev/null -w "%{http_code}" $URL)

if [ "$STATUS_CODE" -eq "$STATUS_OK" ]; then
    echo "The application is UP. Status code: $STATUS_CODE"
else
    echo "The application is DOWN. Status code: $STATUS_CODE"
fi
