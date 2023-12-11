#!/bin/sh

# build Docker image dari berkas Dockerfile
docker build -t ghcr.io/ekoariaw8301/karsajobs-ui:latest .

# login ke GitHub Package
echo $CR_PAT | docker login ghcr.io -u ekoariaw8301 --password-stdin

# push image ke GitHub Package
docker push ghcr.io/ekoariaw8301/karsajobs-ui:latest