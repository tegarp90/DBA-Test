#!/bin/sh

#switch to non interactive installation
export DEBIAN_FRONTEND=noninteractive
apt-get -y update

#Add key and repo for MariaDB 10.3 installation
#Reference : mariadb.org/download
sudo apt-get install software-properties-common dirmngr apt-transport-https
sudo apt-key adv --fetch-keys 'https://mariadb.org/mariadb_release_signing_key.asc'
sudo add-apt-repository 'deb [arch=amd64,arm64,ppc64el,s390x] https://mirrors.inet.vn/mariadb/repo/10.3/ubuntu focal main'

#Run the installation
sudo apt update
sudo apt install mariadb-server

#Check if MariaDB is already installed successfully
mysql --version