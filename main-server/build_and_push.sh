#!/bin/sh

# Build image
tag="localhost:5000/main-server:latest"
repo_path=$(git rev-parse --show-toplevel)

docker build -t $tag -f $repo_path/main-server/Dockerfile $repo_path/main-server
docker push $tag