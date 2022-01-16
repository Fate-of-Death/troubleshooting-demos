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
		sh 'chmod +x ./scripts/testhost-start.sh
		sh 'docker compose up -d'
		sh 'sleep 15s'
		sh 'docker compose down'
            }
        }
    }
}
