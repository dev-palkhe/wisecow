#!/bin/bash

# Configuration
SOURCE_DIR="/path/to/source_directory"
DEST_DIR="user@remote-server:/path/to/destination"
LOG_FILE="/var/log/backup.log"

# Perform the backup using rsync
rsync -avz $SOURCE_DIR $DEST_DIR
if [ $? -eq 0 ]; then
    echo "$(date): Backup successful" >> $LOG_FILE
else
    echo "$(date): Backup failed" >> $LOG_FILE
fi
