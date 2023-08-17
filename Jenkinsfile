pipeline {
    agent any

    stages {
        stage('Prepare') {
            steps {
                sh 'sh prepare.sh'
            }
        }
        stage('Test') {
            steps {
                sh 'python3 main.py &'
                sh 'export pid=$!'
                sh 'sh test.sh'
                sh 'kill -9 $pid'
            }
        }
    }
}