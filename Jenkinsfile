pipeline {
    
    environment {
        DOCKER_IMAGE = 'my-img-cv'
        DOCKER_CONTAINER_NAME = 'my-cv'
        PORT_MAPPING = '8081:80'
    }

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    // Construire l'image Docker
                    bat 'docker build -t %DOCKER_IMAGE% .'
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    // Démarrer le conteneur Docker
                    bat "docker run -p ${PORT_MAPPING} --name ${DOCKER_CONTAINER_NAME} ${DOCKER_IMAGE}"
                }
            }
        }
    }

   
}
