#!/bin/bash

if [ ! -e docker-compose ]; then
	curl -L https://github.com/docker/compose/releases/download/1.3.2/docker-compose-`uname -s`-`uname -m` > docker-compose
fi
chmod +x docker-compose
./docker-compose up -d
