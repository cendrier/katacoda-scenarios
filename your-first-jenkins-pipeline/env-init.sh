#!/bin/sh

set -eu -o pipefail

## Install Docker-Compose
DOCKER_COMPOSE_VERSION=1.18.0
DOCKER_COMPOSE_BIN="$(which docker-compose)"

curl -sSL -o "${DOCKER_COMPOSE_BIN}" \
  https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/docker-compose-"$(uname -s)"-"$(uname -m)"


## Get Code
git clone https://github.com/oufti-playground/lab-vm.git
cd lab-vm/docker || :
export DOCKER_USERNAME=dduportal

docker-compose pull --parallel front devbox jenkins gitserver jenkins-docker-node
docker-compose up -d
