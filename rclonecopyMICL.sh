#!/bin/bash
logfile=/home/wbicadmin/rclonelogs/rclone-MICL.log
exec &>> $logfile 2>&1
echo ""
echo "RClone Backup Cloud MICL to local store"
echo $(date -u)
echo ""
echo "Starting WBIC-MICL Backup"
/usr/bin/rclone sync -v WBIC-MICL: /mnt/bs01/WBIC-MICL --fast-list
echo "Finished"
echo ""
echo ""
