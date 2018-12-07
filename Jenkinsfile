pipeline { 
    agent any

    stages {
        stage('Compare') {
            steps {
                DIFF = sh(returnStdout: true, script: './compare')
                echo "diff = ${DIFF}"
            }
        }
        stage('Build') { 
            when {
                expression { $DIFF != "" }
            }
            steps { 
                sh 'make' 
            }
        }
        stage('Test') {
            when {
                expression { $DIFF != "" }
            }
            steps {
                sh './hello_exec'
            }
        }
    }
}
