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
                sh 'sudo docker build -t my-app .'
            }
        }
        stage('Deploy to Docker') {
            steps {
                sh 'sudo docker run -p 8081:8080 -d my-app tomcat:latest'
            }
        }
    }
}
