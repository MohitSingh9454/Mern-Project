pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/MohitSingh9454/Mern-Project.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                powershell 'docker build -t final_devops_project_image .'
            }
        }

        stage('Deploy using Docker Compose') {
            steps {
                powershell 'docker-compose down || exit 0'
                powershell 'docker-compose up -d --build'
            }
        }
    }
}
