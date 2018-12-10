pipeline { 
    agent { label 'cpp' } 
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
    }
}
