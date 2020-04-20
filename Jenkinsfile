pipeline {
    environment {
    	registry = "dporr/capstone"
    	registryCredential = 'dockerhub'
    }
    agent any
    stages {
	stage('Linting'){
		parallel {
			stage('Lint python code') {
			  steps {
			   sh 'pylint3 --disable=R,C,W1203,W1202 deployment/*.py'
			  }
			}
			stage('Scan Dockerfile') {
			  steps {
			    sh 'hadolint Dockerfile'
			  }
			}
		}
	}
        stage('Build Docker image') {
            steps {
                script{
			docker.build registry + ":$BUILD_NUMBER"
		}
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
