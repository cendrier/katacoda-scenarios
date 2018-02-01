#!/bin/sh

set -eu -o pipefail

## Install Docker-Compose
echo "== Installing Docker-Compose"
DOCKER_COMPOSE_VERSION=1.18.0
DOCKER_COMPOSE_BIN="$(which docker-compose)"
curl -sSL -o "${DOCKER_COMPOSE_BIN}" \
  https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/docker-compose-"$(uname -s)"-"$(uname -m)"

## Start infra
cd ~/
docker-compose pull --parallel
