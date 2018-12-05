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
                sh './hello_exec'
            }
        }
        stage('Deploy') {
            steps {
                pdrone artifacts: 'hello_exec'
            }
        }
    }
}
