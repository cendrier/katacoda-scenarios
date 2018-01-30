#!/bin/bash

set -eux -o pipefail

git clone https://github.com/oufti-playground/lab-vm.git
cd ./docker || exit 1

docker-compose up -d
