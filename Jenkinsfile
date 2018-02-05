pipeline {
  agent any
  stages {
    stage('Build') {
      agent {
        node {
          label 'docker'
        }
        
      }
      steps {
        sh 'docker image ls'
      }
    }
  }
}