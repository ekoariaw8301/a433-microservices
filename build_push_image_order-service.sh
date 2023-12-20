#!/bin/sh
#docker build -t ekoariaw8301/order-service:latest .
docker build -t ghcr.io/ekoariaw8301/order-service:latest .

#echo $PASSWORD_DOCKER_HUB | docker login -u ekoariaw8301 --password-stdin
echo $CR_PAT | docker login ghcr.io -u ekoariaw8301 --password-stdin

#docker push ekoariaw8301/order-service:latest
docker push ghcr.io/ekoariaw8301/order-service:latest