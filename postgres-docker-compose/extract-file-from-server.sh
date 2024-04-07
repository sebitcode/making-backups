#!/bin/bash

# SET VARIABLES
BACKUP_FILE="backup_file.sql.gz"
SSH_USER="xxxx"
SSH_HOST="x.xxx.xxx.xxx"

scp $SSH_USER@$SSH_HOST:~/backups/$BACKUP_FILE ./backups/