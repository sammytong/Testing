#!/bin/bash
logfile=/home/wbicadmin/rclonelogs/rclone-RPU.log
exec &>> $logfile 2>&1
echo ""
echo "RClone Backup Cloud to local store"
echo $(date -u)
echo ""
echo "Starting WBIC-RPU Backup"
/usr/bin/rclone sync -v WBIC-RPU: /mnt/bs01/WBIC-RPU --fast-list
echo "Finished"
echo ""
echo ""
