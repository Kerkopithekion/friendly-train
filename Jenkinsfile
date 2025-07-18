pipeline {
    agent any
    stages {
        stage('Init') {
            steps {
                sh 'docker stop nodejs-project || true'
                sh 'docker rm nodejs-project || true'
                sh 'docker rm -f $(docker ps -aq) || true'
            }
        }
        stage('Build') {
            steps {
                sh 'docker build -t nodejs-project .'
           }
        }
        stage('Run') {
            steps {
                sh "docker run -d -p 5000:5000 --name nodejs-project nodejs-project"
            }
        }
    }
}
