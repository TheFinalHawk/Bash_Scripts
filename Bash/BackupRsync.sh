#!/bin/bash
# Backup script to backup important directories

backup_date=$(date +%Y-%m-%d)
backup_dir="/backup/$backup_date"
mkdir -p "$backup_dir"

rsync -avz /etc "$backup_dir"
rsync -avz /home "$backup_dir"
rsync -avz /var/log "$backup_dir"
