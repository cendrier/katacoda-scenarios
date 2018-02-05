#!/bin/sh

cd ~/ || exit 1

# Run on the machine which runs the Docker Engine
ssh host01 \
  git clone https://github.com/jenkins-docs/simple-java-maven-app ~/git

docker run \
  -d \
  -u root \
  -p 8080:8080 \
  -v jenkins-data:/var/jenkins_home \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v "${HOME}/git":/home \
  dduportal/katacoda-blueocean
