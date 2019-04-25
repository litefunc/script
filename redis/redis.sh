#!/bin/sh

docker run --name redis -d -p $REDIS_DOCKER_PORT:6379 --restart always \
redis redis-server --requirepass $REDIS_DOCKER_PWD