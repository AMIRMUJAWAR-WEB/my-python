pipeline {
    agent agent1

    environment {
        IMAGE = https://github.com/AMIRMUJAWAR-WEB/my-python.git
    }

    stages {
        stage('Checkout Code') {
            steps {
                git url: 'https://YOUR-REPO-URL.git', branch: 'main'
            }
        }

        stage('Build Image') {
            steps {
                script {
                    sh 'docker build -t $IMAGE .'
                }
            }
        }

        stage('Login to DockerHub') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhub-creds', usernameVariable: 'USER', passwordVariable: 'PASS')]) {
                    sh 'echo $PASS | docker login -u $USER --password-stdin'
                }
            }
        }

        stage('Push Image') {
            steps {
                script {
                    sh 'docker push $IMAGE'
                }
            }
        }
    }
}
