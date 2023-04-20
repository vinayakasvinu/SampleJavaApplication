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
                script {
                    def dockerImage = docker.build("my-app")
                }
            }
        }
        stage('Deploy to Docker') {
            steps {
                script {
                    docker.image("my-app").run("-p 8081:8080 -d tomcat:latest")
                }
            }
        }
    }
}
