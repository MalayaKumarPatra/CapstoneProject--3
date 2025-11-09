#!/bin/bash
LOGFILE="/home/$USER/system_maintenance.log"
exec >> "$LOGFILE" 2>&1

# Automated Backup Script

SOURCE="/home/$USER/Documents"
DEST="/home/$USER/backup"
DATE=$(date +%Y-%m-%d)
FILENAME="backup_$DATE.tar.gz"

mkdir -p "$DEST"

tar -czf "$DEST/$FILENAME" "$SOURCE" 2>/dev/null

if [ $? -eq 0 ]; then
    echo "Backup successful: $DEST/$FILENAME"
else
    echo "Backup failed!"
fi
