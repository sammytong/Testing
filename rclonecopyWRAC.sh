#!/bin/bash
logfile=/home/wbicadmin/rclonelogs/rclone-WRAC.log
exec &>> $logfile 2>&1
echo ""
echo "RClone Backup Cloud to local store"
echo $(date -u)
echo ""
echo "Starting WBIC-WRAC"
/usr/bin/rclone sync -v WBIC-WRAC: /mnt/bs01/WBIC-WRAC --fast-list
echo "Finished"
echo ""
echo ""
