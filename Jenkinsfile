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
                sh 'echo "111"'
                // withDockerRegistry(credentialsId: 'docker', url: 'https://index.docker.io/v1/') {
                //     sh 'echo "111"'
                //     // sh 'docker build -t trangtruong1610/jenkins_test_1 .'
                //     // sh 'docker push trangtruong1610/jenkins_test_1'
                // }
            }
        }
    }






}