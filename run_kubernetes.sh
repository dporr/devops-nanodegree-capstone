#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub
export DOCKERHUB_ID="dporr"
export IMAGE_ID="project4:develop"

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=$DOCKERHUB_ID/$IMAGE_ID
# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacity-p4 --image=$dockerpath --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward pod/udacity-p4 8000:80
