pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'docker build -t app app/'
            }
        }
        stage('Start the app') {
            steps {
                sh 'docker run -d --name app -p 3000:3000 app'
            }
        }
        stage('Test') {
            steps {
                sh 'sh test.sh'
                sh 'docker rm -f app'
            }
        }
    }
}