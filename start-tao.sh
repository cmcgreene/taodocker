#!/bin/sh

set -e 

source ./dockerbuild/.env

echo
echo -- Run TAO System
docker-compose build
docker-compose up

# Standard docker build command for TAO image specifically
#docker build --build-arg TAO_SERVER_NAME=$TAO_SERVER_NAME -t taos -f ./dockerbuild/Dockerfile .


