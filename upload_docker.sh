#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

tag=v1.0.1
dockerpath="rikongha/micros-k8s-api"
fullpath=$dockerpath:$tag

# Authenticate & tag
docker login
docker tag micros-k8s-api $fullpath
echo "Docker ID and Image: $dockerpath"

docker push $fullpath