pipeline {
    agent any

    environment {
        DOCKER_IMAGE = "hello-world-python:${env.BUILD_NUMBER}"
    }

    stages {
        stage('Checkout') {
            steps {
                git url: 'https://github.com/nirajkhatavkar100-nk/jenkins_docker_python_hello.git'
            }
        }

        stage('Test') {
            steps {
                sh 'python3 --version'
            }
        }

        stage('Docker Build') {
            steps {
                script {
                    if (fileExists('Dockerfile')) {
                        sh "docker build -t ${env.DOCKER_IMAGE} ."
                    } else {
                        error "Dockerfile not found!"
                    }
                }
            }
        }

        stage('Docker Run') {
            steps {
                sh "docker run --rm ${env.DOCKER_IMAGE}"
            }
        }

        stage('Cleanup') {
            steps {
                sh "docker system prune -f"
            }
        }
    }

    post {
        success {
            echo 'Build succeeded 🚀'
        }
        failure {
            echo 'Build failed ❌'
        }
    }
}
