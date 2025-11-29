pipeline {
    agent agent1

    stages {
        stage('Checkout Code') {
            steps {
                git url: 'https://github.com/AMIRMUJAWAR-WEB/your-python-repo.git', branch: 'main'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build("my-python-app")
                }
            }
        }

        stage('Run Container') {
            steps {
                script {
                    // Stop any existing container first
                    sh 'docker rm -f my-python-container || true'

                    // Run new container
                    sh 'docker run -d --name my-python-container -p 8000:8000 my-python-app'
                }
            }
        }
    }

    post {
        always {
            echo "Pipeline completed!"
        }
    }
}
