pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'whoami'
                sh 'docker build -t my-app .'
            }
        }
        stage('Deploy to Docker') {
            steps {
                sh 'docker run -p 8081:8080 -d my-app'
            }
        }
    }
}
