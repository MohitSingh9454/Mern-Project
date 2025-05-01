pipeline {
    agent any

    environment {
        // Optional: Add docker and docker-compose to PATH if not globally available
        PATH = "C:\\Program Files\\Docker\\Docker\\resources\\bin:${env.PATH}"
    }

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/MohitSingh9454/Mern-Project.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                // Ensure Docker and Docker Compose are in the PATH
                bat 'docker build -t final_devops_project_image .'
            }
        }

        stage('Deploy using Docker Compose') {
            steps {
                // Ensure Docker Compose is in the PATH
                bat 'docker-compose down || exit 0'
                bat 'docker-compose up -d --build'
            }
        }
    }
}
