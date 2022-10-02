#!/bin/sh

# Build image
# Don't need current date for tag.
# current_date=$(date +'%Y-%m-%d_%H_%M_%S')
tag="localhost:5000/main-server:latest"

docker build -t $tag .
docker push $tag