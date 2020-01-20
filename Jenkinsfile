pipeline {
  agent any
    stages {
      stage('Pull From SCM'){
        steps{
        git 'https://github.com/adil1806/hello-world-war.git'
        }
        }
      stage('Analysis'){
        steps {
       sh '/opt/maven/bin/mvn clean verify sonar:sonar'
        }
      }
       stage('Build'){
        steps {
        sh '/opt/maven/bin/mvn clean install'
        }
        }
        stage('Deploy using TOMCAT'){
        steps {
        deploy adapters: [tomcat9(credentialsId: 'Tomcat', path: '', url: 'http://15.206.125.125:8888')], contextPath: 'Hello - World', war: '**/*.war'
        }
        }
    }
}
    
