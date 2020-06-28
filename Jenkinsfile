pipeline {
    agent any
    stages {
        stage ('Build-Back') { 
            steps {
                sh 'mvn clean package -DskipTests=true'
            }
        }
    }
}