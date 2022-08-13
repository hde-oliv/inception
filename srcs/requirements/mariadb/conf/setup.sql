USE mysql;
FLUSH PRIVILEGES ;
GRANT ALL ON *.* TO 'root'@'%' identified by 'password' WITH GRANT OPTION ;
GRANT ALL ON *.* TO 'root'@'localhost' identified by 'password' WITH GRANT OPTION ;
SET PASSWORD FOR 'root'@'localhost'=PASSWORD('password') ;
DROP DATABASE IF EXISTS test ;
FLUSH PRIVILEGES ;

CREATE DATABASE wordpress;
GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress'@'localhost' IDENTIFIED BY 'wordpress password';
FLUSH PRIVILEGES;
