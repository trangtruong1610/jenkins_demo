pipeline{
    agent any
    stages{
        stage('Clone stage'){
            steps{
                git 'https://github.com/trangtruong1610/jenkins_demo.git'
            }
        }

        // stage('Build docker stage'){
        //     steps{
        //         withDockerRegistry(credentialsId: 'docker', url: 'https://index.docker.io/v1/') {
        //             sh 'docker build -t trangtruong1610/jenkins_test_1 .'
        //             sh 'docker push -a trangtruong1610/jenkins_test_1'
        //         }
        //     }
        // }

        // stage('SSH stage'){
        //     steps{
        //         sshagent(['ssh-remote']) {
        //             sh 'ssh -l trang 35.187.235.57 touch /tmp/aqa/test_jenkins_ssh1'
        //         }
        //     }
        // }






    }

    // after execute all stages always call post sending email, stage can be fail or success
    // post{
    //     always{
    //         mail bcc: '', body: 'hihihihihohoho', cc: '', from: '', replyTo: '', subject: 'test email from jenkins', to: 'trangtruong1610@gmail.com'
    //     }
    // }
}