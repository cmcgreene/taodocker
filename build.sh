b#!/bin/sh

export TAO_SERVER_NAME=127.0.0.1
export TAO_MYSQL_DB=taodb
export TAO_MYSQL_USER=tao3

echo
echo -- Build TAO image
docker build --build-arg TAO_SERVER_NAME=$TAO_SERVER_NAME -t taos -f ./dockerbuild/Dockerfile .
