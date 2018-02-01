#!/bin/sh

set -eu -o pipefail

## Install Docker-Compose
echo "== Installing Docker-Compose"
DOCKER_COMPOSE_VERSION=1.18.0
DOCKER_COMPOSE_BIN="$(which docker-compose)"
curl -sSL -o "${DOCKER_COMPOSE_BIN}" \
  https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/docker-compose-"$(uname -s)"-"$(uname -m)"

## Get infra code
git clone https://github.com/dduportal/katacoda-scenarios.git /tmp/repo
cp -r /tmp/repo/your-first-jenkins-pipeline/docker-compose.yml ~/
cp -r /tmp/repo/your-first-jenkins-pipeline/.env ~/

## Start infra
# cd ~/
# env | sort
# docker-compose pull --parallel
# docker-compose up -d
