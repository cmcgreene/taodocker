#!/usr/bin/env bash

set -e 

source ./dockerbuild/.env

echo
echo -- Build TAO image
docker-compose build

# Old way
#docker build --build-arg TAO_SERVER_NAME=$TAO_SERVER_NAME -t taos -f ./dockerbuild/tao3.2.0RC2.Dockerfile .
