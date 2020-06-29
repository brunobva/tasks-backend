def remote = [:]
remote.name = 'BVA HOST'
remote.host = 'bva-host'
remote.user = 'bvadeploy'
remote.identityFile = '/bvadeploy.pem'
remote.allowAnyHosts = true
remote.agentForwarding = true

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