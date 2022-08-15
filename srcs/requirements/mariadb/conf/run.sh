#!/bin/sh

cat << EOF > setup.sql
USE mysql;
FLUSH PRIVILEGES ;
CREATE USER '$MARIADB_ROOT_NAME' identified by '$MARIADB_ROOT_PASSWORD';
GRANT ALL ON *.* TO '$MARIADB_ROOT_NAME'@'%' identified by '$MARIADB_ROOT_PASSWORD' WITH GRANT OPTION ;
CREATE DATABASE $MARIADB_DATABASE;
CREATE USER '$MARIADB_USER_NAME' identified by '$MARIADB_USER_PASSWORD';
GRANT ALL PRIVILEGES ON $MARIADB_DATABASE.* TO '$MARIADB_USER_NAME'@'%' IDENTIFIED BY '$MARIADB_USER_PASSWORD';
FLUSH PRIVILEGES;
EOF

/usr/bin/mysqld --user=mysql --bootstrap --verbose=0 --skip-name-resolve --skip-networking=0 < setup.sql
rm -rf setup.sql

sleep 1 && mysql < wordpress.sql &
exec mariadbd
