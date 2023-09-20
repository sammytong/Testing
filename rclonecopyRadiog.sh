#!/bin/bash
logfile=/home/wbicadmin/rclonelogs/rclone-Radiog.log
exec &>> $logfile 2>&1
echo ""
echo "RClone Backup Cloud to local store"
echo $(date -u)
echo ""
echo "Starting WBIC-Radiog"
/usr/bin/rclone sync -v WBIC-Radiog: /mnt/bs01/WBIC-Radiog --fast-list
echo "Finished"
echo ""
echo ""
