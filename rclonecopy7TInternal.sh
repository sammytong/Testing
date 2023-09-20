#!/bin/bash
logfile=/home/wbicadmin/rclonelogs/rclone-WBIC-7T-Internal.log
exec &>> $logfile 2>&1
echo ""
echo "RClone Backup Cloud to local store"
echo $(date -u)
echo ""
echo "Starting WBIC-7T-Internal"
/usr/bin/rclone sync -v WBIC-7T-Internal: /mnt/bs01/WBIC-7T-Internal --fast-list
echo "Finished"
echo ""
echo ""
