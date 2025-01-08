#!/bin/bash

# Build Docker image
echo "Building Docker image..."
docker build -t juniismail/item-app:v1 .

# List images
echo "Listing Docker images..."
docker images

# Login ke Docker Hub
echo "Logging in to Docker Hub..."
echo $PASSWORD_DOCKER_HUB | docker login -u juniismail --password-stdin

# Push image ke Docker Hub
echo "Pushing image to Docker Hub..."
docker push juniismail/item-app:v1