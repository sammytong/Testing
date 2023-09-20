#!/bin/bash
logfile=/home/wbicadmin/rclonelogs/rclone-RPUQC.log
exec &>> $logfile 2>&1
echo ""
echo "RClone Backup Cloud to local store"
echo $(date -u)
echo ""
echo "Starting WBIC-RPUQC"
/usr/bin/rclone sync -v WBIC-RPUQC: /mnt/bs01/WBIC-RPUQC --fast-list
echo "Finished"
echo ""
echo ""
