pipeline {
    agent any
    stages {
        stage ('Build-Back') { 
            steps {
                script {
                    sshagent(['ssh_bvadeploy']) {
                        sh 'ssh -t -t bvadeploy@192.168.15.11 -o StrictHostKeyChecking=no'
                        sh 'cd /BVA/$JOB_NAME'
                        sh 'mvn clean package -DskipTests=true'
                    }
                }
            }
        }
    }
}