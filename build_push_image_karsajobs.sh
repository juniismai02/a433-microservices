#!/bin/bash

# Set variables
DOCKER_USERNAME="juniismai"
IMAGE_NAME="karsajobs"
TAG="latest"

# Build Docker image
echo "Building Docker image..."
docker build -t $DOCKER_USERNAME/$IMAGE_NAME:$TAG .

# Login to Docker Hub
echo "Logging in to Docker Hub..."
echo $PASSWORD_DOCKER_HUB | docker login -u $DOCKER_USERNAME --password-stdin

# Push image to Docker Hub
echo "Pushing image to Docker Hub..."
docker push $DOCKER_USERNAME/$IMAGE_NAME:$TAG
