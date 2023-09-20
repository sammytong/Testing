#!/bin/bash
logfile=/home/wbicadmin/rclonelogs/rclone-WBIC-RPU-Quality-Council.log
exec &>> $logfile 2>&1
echo ""
echo "RClone Backup Cloud to local store"
echo $(date -u)
echo ""
echo "Starting WBIC-RPU-Quality-Council"
/usr/bin/rclone sync -v WBIC-RPU-Quality-Council: /mnt/bs01/WBIC-RPU-Quality-Council --fast-list
echo "Finished"
echo ""
echo ""
