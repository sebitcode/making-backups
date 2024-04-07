#!/bin/bash
export COMPOSE_FILE=production.yml

# SET VARIABLES
CONTAINER_NAME="app-postgres-1"

echo "EXEC BACKUP"
docker compose -f $COMPOSE_FILE exec -T postgres backup
echo "END BACKUP"
echo "EXTRAC BUCKUP FROM CONTAINER"
sudo docker cp $CONTAINER_NAME:/backups ~/
echo "EXTRACTED ALL BACKUPS FROM CONTAINER"