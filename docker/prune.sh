#!/bin/sh

docker container prune -f
docker image prune -a -f
docker network prune -f
# docker volume prune
