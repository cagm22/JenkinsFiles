pipeline {
	agent any
		stages {
			stage('Build image') {
				steps {
					//sh "docker pull nginx:latest"
					sh "echo pull"
					sh "echo 111"
					
					sh "git clone https://github.com/cagm22/Jenkinsfile_Examples.git ./temp_git"
					sh "mv -fv ./temp_git/* ."
					sh "rm -rfv temp_git"
					sh "echo 222"
					sh "echo 333"
					sh "echo 444"
					sh "echo 555"
					sh "docker build -t nginx '.'"
					sh "echo 666"

				}
			}
			
			stage('Run server') {
				steps {
					sh "docker run -d -p 9295:80 nginx-server:${BUILD_NUMBER}"
				}
			}
		}
}
