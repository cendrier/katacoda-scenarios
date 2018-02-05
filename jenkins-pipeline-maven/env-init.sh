#!/bin/sh

cd ~/ || exit 1

git clone https://github.com/jenkins-docs/simple-java-maven-app ~/git

docker pull dduportal/katacoda-blueocean
