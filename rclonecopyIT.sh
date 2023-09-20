#!/bin/bash
logfile=/home/wbicadmin/rclonelogs/rclone-IT.log
exec &>> $logfile 2>&1
echo ""
echo "RClone Backup Cloud to local store"
echo $(date -u)
echo ""
echo "Starting WBIC-IT Backup"
/usr/bin/rclone sync -v WBIC-IT: /mnt/bs01/WBIC-IT --fast-list
echo "Finished"
echo ""
echo ""
