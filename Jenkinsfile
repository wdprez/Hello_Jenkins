pipeline { 
    agent any 
    stages {
        stage('Build') { 
            steps { 
                sh 'make' 
            }
        }
        stage('Test'){
            steps {
                sh 'make test'
            }
        }
        stage('Deploy') {
            steps {
                pdrone artifacts: 'hello_exec', serverUrl: '', channel: '', credentialsId: ''
            }
        }
    }
}
