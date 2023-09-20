#!/bin/bash
logfile=/home/wbicadmin/rclonelogs/rclone-MICL-Admin.log
exec &>> $logfile 2>&1
echo ""
echo "RClone Backup Cloud to local store"
echo $(date -u)
echo ""
echo "Starting WBIC-MICL-Admin"
/usr/bin/rclone sync -v WBIC-MICL-Admin: /mnt/bs01/WBIC-MICL-Admin --fast-list
echo "Finished"
echo ""
echo ""
