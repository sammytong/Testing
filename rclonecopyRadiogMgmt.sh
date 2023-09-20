#!/bin/bash
logfile=/home/wbicadmin/rclonelogs/rclone-RadiogMgmt.log
exec &>> $logfile 2>&1
echo ""
echo "RClone Backup Cloud to local store"
echo $(date -u)
echo ""
echo "Starting WBIC-RadiogMgmt"
/usr/bin/rclone sync -v WBIC-RadiogMgmt: /mnt/bs01/WBIC-RadiogMgmt --fast-list
echo "Finished"
echo ""
echo ""
