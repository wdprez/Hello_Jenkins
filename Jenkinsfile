pipeline { 
    agent any
    environment {
        def BR = sh(returnStdout: true, script: 'git status')
        def DIFF = sh(returnStdout: true, script: './compare.sh')
    }
    stages {
        stage('Compare') {
            steps {
                echo "br = ${BR}"
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
