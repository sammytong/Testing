#!/bin/bash
logfile=/home/wbicadmin/rclonelogs/rclone-Administration.log
exec &>> $logfile 2>&1
echo ""
echo "RClone Backup Cloud to local store"
echo $(date -u)
echo ""
echo "Starting WBIC-Administration"
/usr/bin/rclone sync -v WBIC-Administration: /mnt/bs01/WBIC-Administration --fast-list
echo "Finished"
echo ""
echo ""
