#!/bin/sh
version=0.1
IMAGE=git
USERNAME=wearetherock

docker build -t $USERNAME/$IMAGE .
docker tag $USERNAME/$IMAGE:latest $USERNAME/$IMAGE:$version
docker push $USERNAME/$IMAGE:latest
docker push $USERNAME/$IMAGE:$version