
pipeline {
    agent { docker { image 'maven:3.3.3' } }
    stages {
        stage('build') {
            steps {
                sh 'mvn --version'
            }
            stage('Test'){
                sh 'mvn test -Dkarate.options="--tags @api" -Dtest=PrettyRunner'
            }
        }
    }
}
