#!/bin/bash
logfile=/home/wbicadmin/rclonelogs/rclone-Reception.log
exec &>> $logfile 2>&1
echo ""
echo "RClone Backup Cloud to local store"
echo $(date -u)
echo ""
echo "Starting WBIC-Reception"
/usr/bin/rclone sync -v WBIC-Reception: /mnt/bs01/WBIC-Reception --fast-list
echo "Finished"
echo ""
echo ""
