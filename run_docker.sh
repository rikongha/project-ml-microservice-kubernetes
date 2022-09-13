#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

docker build --tag=micros-k8s-api .

docker image ls

# Run flask app
docker run -p 8000:80 micros-k8s-api
