pipeline {
    agent any
    stages {
        stage ('Build-Back') { 
            steps {
                script {
                    sshagent(['ssh_bvadeploy']) {
                        sh 'ssh -tt bvadeploy@192.168.15.11 -o StrictHostKeyChecking=no && cd /BVA/$JOB_NAME && mvn clean package -DskipTests=true'
                    }
                }
            }
        }
    }
}