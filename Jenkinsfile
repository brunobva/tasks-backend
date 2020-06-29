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
                sshCommand remote: mvn --version && java --version                 
            }
        }
    }
}