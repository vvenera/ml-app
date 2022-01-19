#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=venerakozueva/ml-app

# Step 2:
# Authenticate & tag
docker login --username "venerakozueva" &&\
	docker image tag ml-app $dockerpath
echo "Docker ID and Image: $dockerpath"

# Step 3:
docker image push $dockerpath
