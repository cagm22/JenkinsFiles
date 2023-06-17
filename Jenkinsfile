pipeline {
	agent any
	stages {
		stage('Build image') {
			steps {
				sh "git clone https://github.com/cagm22/Jenkinsfile_Examples.git ./temp_git"
				sh "mv -f ./temp_git/* ."
				sh "rm -rf temp_git"
				sh "docker build -t apache '.'"
			}
		}
		stage('Run server') {
			steps {
				sh "docker run -dit -p 8081:81 apache"
			}
		}
	}
}
