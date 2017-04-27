#!/bin/bash

mysql -u root -e "DROP DATABASE IF EXISTS testdb;"
mysql -u root -e "CREATE DATABASE testdb character set utf8mb4;"

mysql -u root -b testdb < /docker-entrypoint-initdb.d/testdb.sql_
