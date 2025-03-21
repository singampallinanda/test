#!/bin/bash

IMAGE_NAME="singampallinandu/simple-python-flask-app"
CONTAINER_NAME="simple-flask-container"
PORT_MAPPING="5000:5000"  # Adjust if needed

echo "Pulling image: $IMAGE_NAME..."
docker pull $IMAGE_NAME

echo "Stopping and removing existing container (if any)..."
docker stop $CONTAINER_NAME 2>/dev/null
docker rm $CONTAINER_NAME 2>/dev/null

echo "Running container: $CONTAINER_NAME..."
docker run -d --name $CONTAINER_NAME -p $PORT_MAPPING $IMAGE_NAME

echo "Container $CONTAINER_NAME started successfully!"
