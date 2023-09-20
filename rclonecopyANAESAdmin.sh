#!/bin/bash
logfile=/home/wbicadmin/rclonelogs/rclone-ANAESAdmin.log
exec &>> $logfile 2>&1
echo ""
echo "RClone Backup Cloud to local store"
echo $(date -u)
echo ""
echo "Starting WBIC-ANAESAdmin Backup"
/usr/bin/rclone sync -v WBIC-ANAESAdmin: /mnt/bs01/WBIC-ANAESAdmin --fast-list
echo "Finished"
echo ""
echo ""
