#!/bin/bash

# Perform Incremental backup with mysqlbackup
# Add your backup dir location, password, mysql location and mysqldump location
DATE=$(date +%d-%m-%Y)
TIME=$(date +"%r")
BACKUP_DIR="/home/tegar/backup"
MYSQL_DIR="/home/tegar/mysql"
MYSQL_USER="root"
MYSQL_PASSWORD="123456"
MYSQLADMIN=/usr/bin/mysqladmin

# To generate name of mysql-bin file before incremental backup
MYSQLBIN_OLD=`ls -lrth $MYSQL_DIR | grep mysql-bin.* | awk '{ print $9 }' | egrep -v "mysql-bin.index" | tail -n 1`
echo "The mysql-bin file before incremental backup on $DATE - $TIME is $MYSQLBIN_OLD" >> $BACKUP_DIR/$DATE/mysql-bininfo.txt

$MYSQLADMIN -u$MYSQL_USER -p$MYSQL_PASSWORD flush-logs

cp -rf $MYSQL_DIR/$MYSQLBIN_OLD $BACKUP_DIR/$DATE/