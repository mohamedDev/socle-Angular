pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        echo 'Hi, GeekFlare. Starting to build the App.'
      }
    }
    stage('Test') {
      steps {
        input('Do you want to proceed?')
      }
    }
    stage('Deploy') {
     steps {
        input('Do you want to deplay')
      }
    }
    stage('Prod') {
      steps {
        echo "App is Prod Ready"
      }

    }
  }
}
