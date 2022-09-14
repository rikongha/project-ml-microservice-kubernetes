#!/usr/bin/env bash
tag=v1.0.1
dockerpath="rikongha/micros-k8s-api"

kubectl run mlmicrosapi \
    --image=$dockerpath:$tag \
    --port=80 --labels app=mlmicrosapi

kubectl get pods

kubectl port-forward mlmicrosapi 8000:80

