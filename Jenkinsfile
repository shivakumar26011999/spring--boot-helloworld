pipeline {
    agent any
    stages {
        stage("build") {
            steps {
                sh """
                   docker login --username username --password password
                   docker build -t hello-world-app .
                   echo "Docker image has built."
                   docker push hello-world-app 
                """
            }
        }
        stage("test") {
            steps {
                echo "Test stage."
            }
        }
        stage("deploy") {
            steps {
                echo "Deploy stage."
            }
        }
    }
}