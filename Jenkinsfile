pipeline{
    agent any
    stages{
        stage('Clone'){
            steps{
                git 'https://github.com/trangtruong1610/jenkins_demo.git'
            }
        }
    }

    stages{
        stage('Clone'){
            steps{
                withDockerRegistry(credentialsId: 'docker-hub', url: 'https://index.docker.io/v1/') {
                    sh 'docker build -t trangtruong1610/jenkins_test_1 .'
                    sh 'docker push trangtruong1610/jenkins_test_1'
                }
            }
        }
    }




}