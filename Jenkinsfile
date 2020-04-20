pipeline {
    agent any
    stages {
	stage('setup'){
		steps{
			sh 'pip3 install -r deployment/requirements.txt'
		}

	}
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
        stage('Build') {
            steps {
                echo 'Building..'
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
