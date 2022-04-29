pipeline{
    agent any
    stages{
        stage('Clone stage'){
            steps{
                git 'https://github.com/trangtruong1610/jenkins_demo.git'
            }
        }

        stage('Build stage'){
            steps{
                // sh '/usr/local/bin/docker login -u trangtruong1610 -p a500a07e-689a-47ea-b387-0c9d8fa6d87a https://index.docker.io/v1/'
                // sh '/usr/local/bin/docker ps'
                // sh '/usr/local/bin/docker push trangtruong1610/jenkins_test_1'

                withDockerRegistry(credentialsId: 'docker', url: 'https://index.docker.io/v1/') {
                    sh 'docker build -t trangtruong1610/jenkins_test_1'
                    sh 'docker push trangtruong1610/jenkins_test_1'
                }
            }
        }
    }






}