#!/bin/bash
export COMPOSE_FILE=production.yml

# SET VARIABLES
BACKUP_FILE="backup_file.sql.gz"
CONTAINER_NAME="app-postgres-1"

docker compose up -d postgres
docker cp backups/$BACKUP_FILE $CONTAINER_NAME:/backups
docker compose exec postgres restore $BACKUP_FILE
# APPLY NEW MIGRATIONS HERE