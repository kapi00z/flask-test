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
                pid = sh('python3 main.py &; echo $!')
                sh 'sh test.sh'
                sh 'kill -9 $pid'
            }
        }
    }
}