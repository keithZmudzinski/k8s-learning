#!/bin/sh

# Run build and push scripts for runner images.
repo_path="$(git rev-parse --show-toplevel)/runner"

$repo_path/executor/build_and_push.sh
$repo_path/receiver/build_and_push.sh