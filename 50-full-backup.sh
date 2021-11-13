#!/bin/sh

#Backup using mysqldump method
#Perform database backup for classicmodels database
sudo mysqldump -u root -p classicmodels > classicmodels_dump.sql

#For backup all database use this command
#sudo mysqldump -u root -p --all-databases > alldb.sql