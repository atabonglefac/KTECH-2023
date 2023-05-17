pipeline {
  agent any
  tools {
     maven 'M2_HOME'
  }
  environment {
<<<<<<< HEAD
     registry = "ifunanya12/dockersima-credentials"
     registryCredential = 'dockersima-credentials'
=======
     registry = "Ifunanya12/docker-credentials"
     registryCredential = 'docker-credentials'
>>>>>>> 9b9573697f67f7c239192bf676cf0fe854e72f36
  }
  stages {
    stage('Build'){
      steps {
       sh 'mvn clean'
       sh 'mvn install'
       sh 'mvn package'
     }
   }
    stage('test'){
      steps {
       echo "test step"
       sh 'mvn test'
     }
   }
    stage('deploy'){
      steps {
      script {
       docker.build registry + ":$BUILD_NUMBER"
      }
     }
   }
  }
}
