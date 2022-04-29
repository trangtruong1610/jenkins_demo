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
                // sh '/usr/local/bin/docker login -u trangtruong1610 -p trangtruong https://index.docker.io/v1/'
                // sh '/usr/local/bin/docker build -t trangtruong1610/jenkins_test_1 .'
                // sh '/usr/local/bin/docker push trangtruong1610/jenkins_test_1'

                withDockerRegistry(credentialsId: 'docker', url: 'https://index.docker.io/v1/') {
                    sh 'docker build -t trangtruong1610/jenkins_test_1 .'
                    sh 'docker push trangtruong1610/jenkins_test_1'
                }
            }
        }
    }






}