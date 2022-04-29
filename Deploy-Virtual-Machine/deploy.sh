#!bin/bash

DOCKER_REPOSITORY= $1
DOCKER_IMAGE= $2
TAG= $3
PORT= $4

docker rm -f $(docker ps -a -q)
docker rmi -f $(docker images -a -q)

docker run -p $PORT:$PORT -d $DOCKER_REPOSITORY/$NAME_IMAGE:DEV-$TAG