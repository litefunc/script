#!/bin/sh

sudo docker run -i --rm postgres cat /usr/share/postgresql/postgresql.conf.sample > /mnt/postgresql/docker1/postgresql.conf

docker run -p $PG_DOCKER_PORT:5432 --name postgres -d \
-e POSTGRES_USER=$PG_DOCKER_USER \
-e POSTGRES_PASSWORD=$PG_DOCKER_PWD \
-v `pwd`/database.sql:/docker-entrypoint-initdb.d/1-database.sql \
-v /mnt/postgresql/docker1/data:/var/lib/postgresql/data \
-v /mnt/postgresql/docker1/postgresql.conf:/etc/postgresql/postgresql.conf \
--restart always postgres:latest

# docker network connect mynet postgres
