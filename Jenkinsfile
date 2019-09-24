pipeline {
    agent none
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
