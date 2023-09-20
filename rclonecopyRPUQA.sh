#!/bin/bash
logfile=/home/wbicadmin/rclonelogs/rclone-RPUQA.log
exec &>> $logfile 2>&1
echo ""
echo "RClone Backup Cloud to local store"
echo $(date -u)
echo ""
echo "Starting WBIC-RPUQA Backup"
/usr/bin/rclone sync -v WBIC-RPUQA: /mnt/bs01/WBIC-RPUQA --fast-list
echo "Finished"
echo ""
echo ""
