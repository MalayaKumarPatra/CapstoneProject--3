#!/bin/bash
LOGFILE="/home/$USER/system_maintenance.log"
exec >> "$LOGFILE" 2>&1

# Maintenance Menu Script

while true; do
    echo "===== System Maintenance Suite ====="
    echo "1. Run Backup"
    echo "2. Update & Cleanup"
    echo "3. Monitor Logs"
    echo "4. Exit"
    read -p "Choose an option [1-4]: " choice

    case $choice in
        1) ./backup.sh ;;
        2) ./update_cleanup.sh ;;
        3) ./log_monitor.sh ;;
        4) echo "Exiting..."; exit 0 ;;
        *) echo "Invalid choice! Please try again." ;;
    esac
    echo ""
done
