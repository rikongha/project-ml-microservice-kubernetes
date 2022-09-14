#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`
dockerpath="rikongha/micros-k8s-api:v1.0.0"

# Authenticate & tag
docker login
docker tag micros-k8s-api $dockerpath
echo "Docker ID and Image: $dockerpath"

docker push $dockerpath

# TODO: improve versioning