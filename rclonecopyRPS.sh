#!/bin/bash
logfile=/home/wbicadmin/rclonelogs/rclone-WBIC-RPS.log
exec &>> $logfile 2>&1
echo ""
echo "RClone Backup Cloud to local store"
echo $(date -u)
echo ""
echo "Starting WBIC-RPS"
/usr/bin/rclone sync -v WBIC-RPS: /mnt/bs01/WBIC-RPS --fast-list
echo "Finished"
echo ""
echo ""
