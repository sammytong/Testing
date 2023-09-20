#!/bin/bash
logfile=/home/wbicadmin/rclonelogs/rclone-WBIC-7T.log
exec &>> $logfile 2>&1
echo ""
echo "RClone Backup Cloud to local store"
echo $(date -u)
echo ""
echo "Starting WBIC-7Te"
/usr/bin/rclone sync -v WBIC-7T: /mnt/bs01/WBIC-7T --fast-list
echo "Finished"
echo ""
echo ""
