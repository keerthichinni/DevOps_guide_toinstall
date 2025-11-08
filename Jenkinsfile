pipeline {
    agent any

    environment {
        TF_VAR_aws_access_key = credentials('aws-access-key')
        TF_VAR_aws_secret_key = credentials('aws-secret-key')
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/keerthichinni/DevOps_guide_toinstall.git'
            }
        }

        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Terraform Validate') {
            steps {
                sh 'terraform validate'
            }
        }

        stage('Terraform Plan') {
            steps {
                sh 'terraform plan -var="aws_region=us-east-1" -var="bucket_name=jenkins-terraform-demo-bucket"'
            }
        }

        stage('Terraform Apply') {
            steps {
                input message: 'Proceed with Terraform Apply?'
                sh 'terraform apply -auto-approve -var="aws_region=us-east-1" -var="bucket_name=jenkins-terraform-demo-bucket"'
            }
        }
    }

    post {
        always {
            echo "Terraform Pipeline Completed!"
        }
    }
}
