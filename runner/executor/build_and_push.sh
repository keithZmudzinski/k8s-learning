#!/bin/sh

# Build image
# Hardcoding "ubuntu" as executor to push, since I'm not going to make any more (at least not yet).
tag="localhost:5000/runner/executor/ubuntu:latest"
repo_path=$(git rev-parse --show-toplevel)

docker build -t $tag -f $repo_path/runner/executor/ubuntu/Dockerfile $repo_path/runner/executor/ubuntu
docker push $tag