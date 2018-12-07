pipeline { 
    agent any
    environment {
        def DIFF = sh(returnStdout: true, script: './compare.sh')
    }
    stages {
        stage('Compare') {
            steps {
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
