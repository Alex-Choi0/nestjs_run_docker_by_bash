#!/bin/bash

echo "shutdown docker-compose.yaml without removing volumn"

docker-compose -f docker-compose.yaml down

echo "turn up the docker-compose.yaml with build"

docker-compose -f docker-compose.yaml up -d --build

Get the current working directory
current_dir=$(pwd)

# Extract the folder name using basename
folder_name=$(basename "$current_dir")

echo "Current folder name: $folder_name"

docker logs -f "${folder_name}-backend-1"

exit 0
