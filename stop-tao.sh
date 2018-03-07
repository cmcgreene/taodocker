#!/bin/sh

set -e 

source ./dockerbuild/.env

echo
echo -- Run TAO System
docker-compose down
