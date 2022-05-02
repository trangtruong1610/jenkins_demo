pipeline{
    agent any
    stages{
        stage('Clone stage'){
            steps{
                git 'https://github.com/trangtruong1610/jenkins_demo.git'
            }
        }

        //TODO run robot using docker on jenkins
        stage('Functional regression tests') {
            steps {
                sh 'pwd'
                sh 'docker run -v $PWD/tests:/opt/robotframework/tests:Z -e ROBOT_TESTS_DIR=/opt/robotframework/tests -e BROWSER="chrome" ppodgorsek/robot-framework:latest'
            }
        }

        // stage('Functional regression tests') {
        //     agent { docker {
        //         image 'ppodgorsek/robot-framework:latest'
        //         args '--shm-size=1g -u root' }
        //     }
        //     environment {
        //         BROWSER = 'chrome'
        //         ROBOT_TESTS_DIR = "$WORKSPACE/robot-tests"
        //     }
        //     steps {
        //         sh '''
        //             /opt/robotframework/robot-tests/test.robot
        //         '''
        //     }
        // }


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