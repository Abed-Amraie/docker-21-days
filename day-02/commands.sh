#!/bin/bash
# Commands executed on Day 02

# Interactive ubuntu
docker run -it --rm --name ubuntu-test ubuntu bash

# Env vars
docker run --rm -e MY_NAME=Abed -e MY_CITY=Tehran ubuntu bash -c 'echo "Hi $MY_NAME from $MY_CITY"'

# nginx in background
docker run -d --name my-nginx -p 8080:80 nginx
docker logs my-nginx
docker logs -f my-nginx
docker exec -it my-nginx bash
docker inspect my-nginx
docker stats my-nginx
docker top my-nginx

# stop vs kill vs rm
docker stop my-nginx
docker ps -a
docker start my-nginx
docker kill my-nginx
docker rm my-nginx

# Cleanup
docker system df
docker container prune
docker image prune

# Redis exercise
docker run -d --name my-redis -p 6379:6379 redis
docker exec -it my-redis redis-cli
docker stop my-redis
docker rm my-redis
