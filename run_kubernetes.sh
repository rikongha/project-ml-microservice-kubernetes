#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub
dockerpath="rikongha/micros-k8s-api:v1.0.0"

kubectl run mlmicrosapi --image=$dockerpath --port=80 --labels app=mlmicrosapi

kubectl get pods

kubectl port-forward mlmicrosapi 8000:80

