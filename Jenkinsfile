pipeline {
	agent any

	enviornment {
		DOCKER_IMAGE = 'hello-world-python:latest'
  }

	stages {
		stage('checkout'){
		steps {

		git branch: 'main',
 

`          url:	'https://github.com/nirajkhatavkar100-nk/jenkins_docker_python_hello.git'
		}
	}

	stage('Docker Build') {
	steps {
		script {
			if (fileExists('Dockefile')) {
			 	
			sh "docker build -t ${env.DOCKER_IMAGE} ."
		
		} else {
	error "Dockerfile not found in the worksapce. Please create one for your python application."

	}
      }
    }
  }


	stage('Docker Run (optional)'){
	steps{
		sh "docker run --rm ${env.DOCKER_IMAGE}"

		}
	   }
	}

	Post{
		success {
			echo 'Success'
		}

		failure {
			echo 'Failure'
		}}}




