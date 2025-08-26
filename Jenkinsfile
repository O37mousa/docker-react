pipeline {
    agent {
        label 'docker'
    }

    stages {
        stage('Build froma a docker file'){
            steps {
                script {
                    sh 'docker build -t omousa37/docker-react -f Dockerfile.dev .'
                }
            }
        }

        stage ('run those tests') {
            steps {
                script {
                    env.DOCKER_BUILDKIT=1
                    sh 'docker run -e CI=true omousa37/docker-react npm run test'
                }
            }
        }
    }
}