pipeline {
	agent any
		stages {
			stage('Build image') {
				steps {
					sh "docker pull nginx:latest"
					sh "echo pull"
					sh "echo 111"
					sh "echo 222"
					sh "echo 333"
					sh "echo 444"
					sh "echo 555"
					sh "docker build -t node blabla '.'"
				}
			}
			
			stage('Run server') {
				steps {
					sh "docker run -d -p 9295:80 nginx-server:${BUILD_NUMBER}"
				}
			}
		}
}
