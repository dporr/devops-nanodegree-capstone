#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`
export DOCKERHUB_ID="dporr"
export IMAGE_ID="project4:develop"
# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=$DOCKERHUB_ID/$IMAGE_ID
# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login
docker tag $IMAGE_ID $dockerpath

# Step 3:
# Push image to a docker repositor
docker push $dockerpath

