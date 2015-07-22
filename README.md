Docker Teampass
===============

Teampass is a Collaborative Passwords Manager

Quick Start
-----------

`docker run -d --name mysql -e MYSQL_ROOT_PASSWORD=mypass -e MYSQL_DATABASE=teampass mysql`

`docker run -d --name teampass -p 80:80 --link mysql:mysql jcherqui/docker-teampass`

-- or --  

`docker-compose up -d`

-- or --

`bash install.sh`

Point your browser to `http://127.0.0.1`

DataBase Informations
-------

Host : mysql   
Database : teampass   
Login : root   
Password : mypass

License
----

MIT


**Free Software, Hell Yeah!**
