#!/bin/bash
BACKUP_DIR="/mnt/nfs_share/backups"
DATE=$(date +%F_%H-%M-%S)
HOSTNAME=$(hostname)

mkdir -p $BACKUP_DIR
tar -czf $BACKUP_DIR/${HOSTNAME}_backup_${DATE}.tar.gz /etc /var/log

echo "Backup stored at $BACKUP_DIR/${HOSTNAME}_backup_${DATE}.tar.gz"
