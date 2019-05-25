pipeline {
  agent {
    docker {
      image "node:10.15.3-stretch"
      args "--name cv --network nginx -v /var/www/josecaceres.info/cv:/var/jenkins_home/workspace/cv/dist"
    }
  }
  stages {
    stage ("Build") {
      steps {
        sh "npm install -g @angular/cli@7.3.9"
        sh "npm install"
      }
    }
    stage ("Run") {
      steps {
        sh "npm run build"
      }
    }
    stage ("Next Build") {
      steps {
        input message: "Finished using the web site? (Click \"Proceed\" to continue)"
      }
    }
  }
}