#!/bin/sh

docker run -d -p $MONGO_DOCKER_PORT:27017 --restart always --name mongo \
    -e MONGO_INITDB_ROOT_USERNAME=$MONGO_DOCKER_USER \
    -e MONGO_INITDB_ROOT_PASSWORD=$MONGO_DOCKER_PWD \
    -v /mnt/mongo/docker1/data/db:/data/db \
    mongo:latest
