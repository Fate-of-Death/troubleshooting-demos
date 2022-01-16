pipeline {
    agent {
       node { label 'MyAgent' }
    }
    options {
        timestamps()
    }
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }    
        stage ('Build and test'){
            steps {
		sh 'ls -la'
		sh 'docker compose up -d'
		sh 'sleep 15s'
		sh 'docker compose down'
            }
        }
    }
}
