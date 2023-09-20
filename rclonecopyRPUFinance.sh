#!/bin/bash
logfile=/home/wbicadmin/rclonelogs/rclone-WBIC-RPUFinance.log
exec &>> $logfile 2>&1
echo ""
echo "RClone Backup Cloud to local store"
echo $(date -u)
echo ""
echo "Starting WBIC-RPU-Finance"
/usr/bin/rclone sync -v WBIC-RPU-Finance: /mnt/bs01/WBIC-RPU-Finance --fast-list
echo "Finished"
echo ""
echo ""
