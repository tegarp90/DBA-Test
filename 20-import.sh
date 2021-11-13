#!/bin/sh

#switch to non interactive installation
export DEBIAN_FRONTEND=noninteractive
apt-get -y update

#Download sample SQL
wget https://www.mysqltutorial.org/wp-content/uploads/2018/03/mysqlsampledatabase.zip

#Extract the SQL zip file
unzip mysqlsampledatabase.zip

#Import SQL file
sudo mysql -u root -p123456 < mysqlsampledatabase.sql

#SQL file also imported the database schema
#Check if classicmodel schema and tables already imported successfully

#Check manually
#show databases;
#use classicmodels;
#show tables;