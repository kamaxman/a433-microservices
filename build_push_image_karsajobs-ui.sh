#!/bin/bash

docker build -t kamaxman/karsajobs-ui:latest .
echo $PASSWORD_DOCKER_HUB | docker login -u kamaxman --password-stdin
docker push kamaxman/karsajobs-ui:latest
