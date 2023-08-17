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
                PID = sh (
                    script: 'python3 main.py &; echo $!',
                    returnStdout: true
                ).trim()
                sh 'sh test.sh'
                sh 'kill -9 ${PID}'
            }
        }
    }
}