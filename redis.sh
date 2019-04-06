#!/bin/sh

docker run --name redis -p 6200:6379 --restart always -d redis --requirepass redsmin
