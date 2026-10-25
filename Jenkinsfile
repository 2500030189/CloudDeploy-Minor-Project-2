pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo 'CloudDeploy project started'
                echo 'Automated Web Application Deployment'
            }
        }

        stage('Docker Check') {
            steps {
                bat '"C:\\Users\\DELL\\AppData\\Local\\Programs\\DockerDesktop\\resources\\bin\\docker.exe" --version'
            }
        }

        stage('Pull Docker Image') {
            steps {
                bat '"C:\\Users\\DELL\\AppData\\Local\\Programs\\DockerDesktop\\resources\\bin\\docker.exe" pull yashasvi17/clouddeploy-app:latest'
            }
        }

        stage('Stop Previous Container') {
            steps {
                bat '"C:\\Users\\DELL\\AppData\\Local\\Programs\\DockerDesktop\\resources\\bin\\docker.exe" rm -f clouddeploy-jenkins || exit /b 0'
            }
        }

        stage('Deploy Application') {
            steps {
                bat '"C:\\Users\\DELL\\AppData\\Local\\Programs\\DockerDesktop\\resources\\bin\\docker.exe" run -d -p 8082:80 --name clouddeploy-jenkins yashasvi17/clouddeploy-app:latest'
            }
        }

        stage('Deployment Complete') {
            steps {
                echo 'CloudDeploy application deployment completed!'
                echo 'Open http://localhost:8082 to verify the application.'
            }
        }
    }
}