#!/bin/sh

# Build image
tag="localhost:5000/runner/receiver:latest"
repo_path=$(git rev-parse --show-toplevel)

docker build -t $tag -f $repo_path/runner/receiver/Dockerfile $repo_path/runner/receiver/
docker push $tag