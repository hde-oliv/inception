#!/bin/sh

apk update
apk add mariadb mariadb-client mariadb-server-utils

mkdir -p /var/lib/mysql
chown -R mysql:mysql /var/lib/mysql

mkdir -p /run/mysqld
chown -R mysql:mysql /run/mysqld

mysql_install_db --user=mysql --datadir=/var/lib/mysql

rm -rf /etc/my.conf.d/mariadb-server.cnf
mv mariadb-server.cnf /etc/my.cnf.d
