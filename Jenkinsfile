pipeline {
    agent any

    stages {
        stage('Prepare') {
            steps {
                sh 'sh prepare.sh'
            }
        }
        stage('Test') {
            environment {
                PID = sh (
                    script: 'python3 main.py && echo $!',
                    returnStdout: true
                ).trim()
            }
            steps {
                sh 'sh test.sh'
                sh 'kill -9 ${PID}'
            }
        }
    }
}