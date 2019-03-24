#!/bin/sh

docker run \
  --entrypoint htpasswd \
  registry:2 -Bbn randomhub gogo.snake > auth/htpasswd

docker container stop registry

docker rm stop registry

docker run -d \
  -p 5000:5000 \
  --restart=always \
  --name registry \
  -v "$(pwd)"/auth:/auth \
  -e "REGISTRY_AUTH=htpasswd" \
  -e "REGISTRY_AUTH_HTPASSWD_REALM=Registry Realm" \
  -e REGISTRY_AUTH_HTPASSWD_PATH=/auth/htpasswd \
  -e REGISTRY_STORAGE_DELETE_ENABLED=true \
  -v "$(pwd)"/auth:/auth \
  -v /mnt/registry:/var/lib/registry \
  registry:2
