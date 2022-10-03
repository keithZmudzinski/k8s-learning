#!/bin/sh

namespace="development"
if [[ -n $1 ]]; then
    namespace=$1
fi

repo_path="$(git rev-parse --show-toplevel)"

echo "Deploying deployments to namespace: $namespace\n"
kubectl apply -f $repo_path/runner/deploy/$namespace/runner.deployment.yml