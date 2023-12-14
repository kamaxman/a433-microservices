#!/bin/bash

docker build -t order-service:v1 .
docker images
docker tag order-service:v1 kamaxman/order-service:v1
echo $PASSWORD_DOCKER_HUB | docker login -u kamaxman --password-stdin
docker push kamaxman/order-service:v1
