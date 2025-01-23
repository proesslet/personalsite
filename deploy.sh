#!/bin/bash

# Configuration
REMOTE_USER="docker1" # Replace with your docker username
REMOTE_HOST="10.0.0.5" # Replace with your docker IP
REMOTE_PATH="/home/docker1/images"  # This will be created if it doesn't exist
IMAGE_NAME="personalsite" # Replace with your image name
CONTAINER_NAME="personalsite" # Replace with your container name
DOMAIN="prestonroesslet.com" # Replace with your domain

# Docker run command
DOCKER_RUN_CMD="docker run -d \
    --name $CONTAINER_NAME \
    --network traefik-net \
    --label traefik.enable=true \
    --label \"traefik.http.routers.${CONTAINER_NAME}.rule=Host(\\\`${DOMAIN}\\\`)\" \
    --label traefik.http.routers.${CONTAINER_NAME}.entrypoints=web \
    --label traefik.http.services.${CONTAINER_NAME}.loadbalancer.server.port=80 \
    --restart unless-stopped \
    $IMAGE_NAME:latest"

# Exit on error
set -e

# Create remote directory if it doesn't exist
echo "📁 Ensuring remote directory exists..."
ssh $REMOTE_USER@$REMOTE_HOST "mkdir -p $REMOTE_PATH"

echo "🏗️  Building Docker image..."
docker build -t $IMAGE_NAME:latest .

echo "📦 Saving Docker image to tar..."
docker save $IMAGE_NAME:latest > ${IMAGE_NAME}.tar

echo "📤 Transferring to remote server..."
scp ${IMAGE_NAME}.tar $REMOTE_USER@$REMOTE_HOST:$REMOTE_PATH/${IMAGE_NAME}.tar

echo "🚀 Deploying on remote server..."
ssh $REMOTE_USER@$REMOTE_HOST "cd $REMOTE_PATH && \
    echo 'Loading Docker image...' && \
    docker load -i ${IMAGE_NAME}.tar && \
    echo 'Stopping existing container (if any)...' && \
    docker stop $CONTAINER_NAME 2>/dev/null || true && \
    docker rm $CONTAINER_NAME 2>/dev/null || true && \
    echo 'Starting new container...' && \
    $DOCKER_RUN_CMD && \
    echo 'Cleaning up...' && \
    rm ${IMAGE_NAME}.tar"

echo "🧹 Cleaning up local tar file..."
rm ${IMAGE_NAME}.tar

echo "✅ Deployment complete! Your site should be available at https://${DOMAIN}"

# Verify the container is running
echo "🔍 Verifying deployment..."
ssh $REMOTE_USER@$REMOTE_HOST "docker ps | grep $CONTAINER_NAME" 

echo "Cleaning up old images..."
ssh $REMOTE_USER@$REMOTE_HOST "docker image prune -a -f"

