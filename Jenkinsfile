pipeline {
	agent any
	stages {
		stage('Build image') {
			steps {
				sh "git clone https://github.com/cagm22/Jenkinsfile_Examples.git ./temp_git"
				sh "mv -f ./temp_git/* ."
				sh "rm -rf temp_git"
				sh "docker build -t apache_1 '.'"
				sh "docker build -t apache_2 '.'"
				sh "docker build -t apache_3 '.'"
				sh "docker build -t apache_4 '.'"			
			}
		}
		stage('Run server') {
			steps {
				sh "docker run -dit -p 8081:81 apache_1"
				sh "docker run -dit -p 8081:81 apache_2"
				sh "docker run -dit -p 8081:81 apache_3"
				sh "docker run -dit -p 8081:81 apache_4"
			}
		}
	}
}
