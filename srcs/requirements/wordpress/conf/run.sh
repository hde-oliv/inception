#!/bin/sh

sed -i "s|database_name|${MARIADB_DATABASE}|g" /www/wp-config.php
sed -i "s|database_username|${MARIADB_USER_NAME}|g" /www/wp-config.php
sed -i "s|database_password|${MARIADB_USER_PASSWORD}|g" /www/wp-config.php

php-fpm7 --nodaemonize
