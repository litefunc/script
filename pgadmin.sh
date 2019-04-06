#!/bin/sh

docker run -p 8600:80 --name pgAdmin --restart always \
    --network mynet \
    -e "PGADMIN_DEFAULT_EMAIL=ak66h1989@gmail.com" \
    -e "PGADMIN_DEFAULT_PASSWORD=d03724008" \
    -d dpage/pgadmin4
