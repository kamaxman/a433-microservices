#!/bin/bash

docker build -t shipping-service:v1 .
docker images
docker tag shipping-service:v1 kamaxman/shipping-service:v1
echo $PASSWORD_DOCKER_HUB | docker login -u kamaxman --password-stdin
docker push kamaxman/shipping-service:v1
