#!/bin/sh
#build docker image from Dockerfile in current dir with name karsajobs tag latest
#docker build -t ekoariaw8301/karsajobs:latest .

#build docker image from dockerfile
docker build -t ghcr.io/ekoariaw8301/karsajobs:latest .

# login ke docker hub
#echo $PASSWORD_DOCKER_HUB | docker login -u ekoariaw8301 --password-stdin

# login ke github package
echo $CR_PAT | docker login ghcr.io -u ekoariaw8301 --password-stdin

# puch docker ke docker hub
# docker push ekoariaw8301/karsajobs:latest

#push docker ke github package
docker push ghcr.io/ekoariaw8301/karsajobs:latest

#add new line to tidy output
#echo '\n\n'

#create new image tag
#docker tag karsajobs:latest ghcr.io/ariecc101/karsajobs:latest
#add new line to tidy output
#echo '\n\n'

#login to github packages
#echo $GITHUB_PACKAGES_TOKEN | docker login ghcr.io -u ariecc101 --password-stdin
#add new line to tidy output
#echo '\n\n'

#push image to github packages
#docker push ghcr.io/ariecc101/karsajobs:latest
#add new line to tidy output
#echo '\n\n'
