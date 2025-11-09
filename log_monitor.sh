#!/bin/bash
LOGFILE="/home/$USER/system_maintenance.log"
exec >> "$LOGFILE" 2>&1

# Log Monitoring Script

LOGFILE="/var/log/syslog"
ALERTFILE="/home/$USER/log_alerts.txt"

grep -i "error\|warning\|fail" "$LOGFILE" > "$ALERTFILE"

if [ -s "$ALERTFILE" ]; then
    echo "Alerts found! Check $ALERTFILE for details."
else
    echo "No alerts found in logs."
fi
