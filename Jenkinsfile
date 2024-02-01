pipeline {
    agent any
 
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', credentialsId: 'cred_id', url: 'repo_link'
            }
        }
        stage('Terraform init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Terraform validate') {
            steps {
                sh 'terraform validate'
            }
        }
        stage('Terraform plan') {
            steps {
                sh 'terraform plan'
            }
        }
        stage('Terraform apply') {
            steps {
                sh 'terraform apply --auto-approve'
            }
        }
    }
}
