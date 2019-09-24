pipeline {
    agent {
        image 'maven:3-alpine'
            args '-v $HOME/.m2:/root/.m2'
    }
    stages {
        stage('build') {
            steps {
                sh 'mvn --version'
                   }
        }
        stage('Test'){
            steps{
                sh 'mvn test -Dkarate.options="--tags @api" -Dtest=PrettyRunner'
                }
            }
        }
    }
