#!/bin/bash
logfile=/home/wbicadmin/rclonelogs/rclone-RPUMGMT.log
exec &>> $logfile 2>&1
echo ""
echo "RClone Backup Cloud to local store"
echo $(date -u)
echo ""
echo "Starting WBIC-RPUMGMT Backup"
/usr/bin/rclone sync -v WBIC-RPUMGMT: /mnt/bs01/WBIC-RPUMGMT --fast-list
echo "Finished"
echo ""
echo ""
