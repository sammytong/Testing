#!/bin/bash
logfile=/home/wbicadmin/rclonelogs/rclone-PET.log
exec &>> $logfile 2>&1
echo ""
echo "RClone Backup Cloud to local store"
echo $(date -u)
echo ""
echo "Starting WBIC-PET"
/usr/bin/rclone sync -v WBIC-PET: /mnt/bs01/WBIC-PET --fast-list
echo "Finished"
echo ""
echo ""
