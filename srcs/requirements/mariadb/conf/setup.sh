#!/bin/sh

apk update
apk add mariadb mariadb-client mariadb-server-utils

mkdir -p /var/lib/mysql
chown -R mysql:mysql /var/lib/mysql

mkdir -p /run/mysqld
chown -R mysql:mysql /run/mysqld

mysql_install_db --user=mysql --datadir=/var/lib/mysql > /dev/null

exec /usr/bin/mysqld --user=mysql --bootstrap --verbose=0 --skip-name-resolve --skip-networking=0 < setup.sql
