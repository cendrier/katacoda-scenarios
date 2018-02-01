#!/bin/sh

git clone https://github.com/oufti-playground/lab-vm.git
cd lab-vm/docker || :
export DOCKER_USERNAME=dduportal
DOCKER_COMPOSE_VERSION=1.18.0
DOCKER_COMPOSE_BIN="$(which docker-compose)"

curl -sSL -o "${DOCKER_COMPOSE_BIN}" \
  https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/docker-compose-"$(uname -s)"-"$(uname -m)"
docker-compose pull --parallel
docker-compose up -d
