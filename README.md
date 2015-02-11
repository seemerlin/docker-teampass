Docker Teampass
===============

Teampass is a Collaborative Passwords Manager

Quick Start
-----------

```
docker run --name teampass -d -p 80:80 -p 3306:3306 \
-e MYSQL_PASS="mypass" jcherqui/docker-teampass
```
-- or --  
`bash install.sh`

Point your browser to `http://127.0.0.1`

Absolute path to teampass folder : `/app`

License
----

MIT


**Free Software, Hell Yeah!**