pipeline {
    agent any
    stages {
        stage ('Build-Back') { 
            steps {
                script {
                    sshagent(['ssh_bvadeploy']) {
                        sh 'cd /BVA/$JOB_NAME'
                        sh 'mvn clean package -DskipTests=true'
                    }
                }
            }
        }
    }
}