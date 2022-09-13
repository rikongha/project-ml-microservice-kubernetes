#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`
dockerpath="rikongha/micros-k8s-api:v1.0.0"


# Step 2:  
# Authenticate & tag
docker login
docker tag micros-k8s-api $dockerpath
echo "Docker ID and Image: $dockerpath"

# Step 3:
docker push $dockerpath




# TODO: improve versioning
# REV_TAG=$(git log -1 --pretty=format:%h)
# docker build -t micros-k8s-api:$REV_TAG .