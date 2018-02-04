#!/bin/bash

cd ~/ || exit 1

git clone https://github.com/jenkins-docs/simple-java-maven-app ~/git

docker run \
  -d \
  -u root \
  -p 8080:8080 \
  -e JAVA_OPTS="-Djenkins.install.runSetupWizard=false -Dhudson.TcpSlaveAgentListener.hostName=localhost -Xms256m -Xmx512m" \
  # -v "${HOME}/preconfigureJenkins.groovy":/var/jenkins_home/init.groovy.d/preconfigureJenkins.groovy \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v "${HOME}/git":/git \
  jenkinsci/blueocean
