pipeline {
  agent any
  stages {
    stage('Build image') {
        steps {
	    sh "docker pull nginx:latest"
	    sh "echo pull"
	    sh "archivo='miarchivo.txt'"
	    sh "echo 111"
        sh " contenido='image 'node:lts-bullseye-slim'\nargs '-p 3000:3000'\nsh \'echo download\' "
        sh "echo 222"
        sh "echo -e '$contenido' > '$archivo'"
        sh "echo 333"
        sh "echo 'Se ha creado el archivo $archivo con el siguiente contenido:'"
        sh "echo 444"
        sh "mv '$archivo' Dockerfile"
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
