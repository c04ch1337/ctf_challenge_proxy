#!/bin/bash

# Build and start the NGINX reverse proxy
echo "Building and starting NGINX reverse proxy..."
docker-compose up -d

echo "NGINX reverse proxy is running on http://localhost:80"
