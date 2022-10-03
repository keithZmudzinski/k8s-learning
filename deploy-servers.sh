#!/bin/sh

servers=( "$@" )

if [[ -z $1 ]]; then
    servers=('main-server' 'runner')
else
    servers=( "$@" )
fi

namespace="development"

echo "Building and pushing images\n"
for server in "${servers[@]}"; do
    echo "Building and pushing images for $server\n"
    $server/build_and_push.sh
done

echo "Deploying deployments\n"
for server in "${servers[@]}"; do
    echo "Deploying deployments for $server\n"
    $server/deploy.sh
done

