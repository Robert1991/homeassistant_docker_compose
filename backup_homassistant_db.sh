#!/bin/bash


# Initialize variables
backup_path=""

while [[ "$#" -gt 0 ]]; do
    case $1 in
        -p|--backup-path)
            backup_path="$2"
            shift
            shift
            ;;
    esac
done

if [ -z "$backup_path" ]; then
    echo "Error: Missing backup path."
    exit 1
fi

source .env

docker exec mariadb mysqldump -u root -p$MYSQL_ROOT_PASSWORD --all-databases > $backup_path