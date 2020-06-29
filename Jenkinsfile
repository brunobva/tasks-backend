pipeline {
    agent any
    stages {
        stage ('Build-Back') { 
            steps {
                script {
                    sshagent(['ssh_bvadeploy']) {
                        sh 'ssh -tt bvadeploy@bva-host -o StrictHostKeyChecking=no && mvn --version && java --version
                    }
                }
            }
        }
    }
}