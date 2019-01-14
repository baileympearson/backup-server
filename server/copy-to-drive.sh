#! /bin/bash

MOUNT_POINT=/mnt/backup
BACKUP_LOCATION=/home/bailey/backup

echo $MOUNT_POINT
echo $BACKUP_LOCATION

exit

sudo rsync -av ${BACKUP_LOCATION} ${MOUNT_POINT}
