#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=frimps65/k8-project

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run k8-pod --image $dockerpath

# Step 3:
# List kubernetes pods
kubectl get po -A

# Step 4:
# Forward the container port to a host
kubectl port-forward pod/k8-pod 8000:80
