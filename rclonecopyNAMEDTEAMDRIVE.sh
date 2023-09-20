#!/bin/bash
logfile=/home/wbicadmin/rclonelogs/rclone-Nameofteamdrive.log
exec &>> $logfile 2>&1
echo ""
echo "RClone Backup Cloud to local store"
echo $(date -u)
echo ""
echo "Starting WBIC-namedteamdrive"
/usr/bin/rclone sync -v WBIC-namedteamdrive: /mnt/bs01/WBIC-namedteamdrive --fast-list
echo "Finished"
echo ""
echo ""
