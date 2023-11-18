#!/bin/bash

docker build -t item-app:v1 .
docker images
docker tag item-app:v1 kamaxman/item-app:v1
echo $PASSWORD_DOCKER_HUB | docker login -u kamaxman --password-stdin
docker push kamaxman/item-app:v1
 