#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# This is your Docker ID/path
dockerpath="abdelrahmanma/udacity-devops"

# Run the Docker Hub container with kubernetes
kubectl run udacity-devops-demo --image=$dockerpath --port=80 --labels app=udacity-devops-demo

# List kubernetes pods
kubectl get pods

# Forward the container port to a host
kubectl port-forward udacity-devops-demo 8000:80
