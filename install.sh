#!/bin/bash

DB_PASSWORD="mypass"
DB_DATABASE="teampass"

which docker > /dev/null 2>&1
if [ "$?" != 0 ]; then
    echo 'Veuillez installer docker'
    exit 2
fi

which mysql > /dev/null 2>&1
if [ "$?" != 0 ]; then
    echo 'Veuillez installer mysql'
    exit 2
fi

docker rm -f teampass
docker build -t teampass .
docker run --name teampass -d -p 80:80 -p 3306:3306 -e MYSQL_PASS="$DB_PASSWORD" teampass

sleep 10
mysql -h $(docker inspect --format '{{ .NetworkSettings.IPAddress }}' teampass) -uadmin -p$DB_PASSWORD -e "create database $DB_DATABASE;"
