#!/bin/sh
#build docker image from Dockerfile in current dir with name karsajobs tag latest
#docker build -t ekoariaw8301/karsajobs-ui:latest .

#build docker image from github package
docker build -t ghcr.io/ekoariaw8301/karsajobs-ui:latest .

# login ke docker hub
#echo $PASSWORD_DOCKER_HUB | docker login -u ekoariaw8301 --password-stdin

# login ke github package
echo $CR_PAT | docker login ghcr.io -u ekoariaw8301 --password-stdin

#docker push ekoariaw8301/karsajobs-ui:latest
docker push ghcr.io/ekoariaw8301/karsajobs-ui:latest