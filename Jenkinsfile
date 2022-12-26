pipeline {
    agent any
    stages {
        stage("build") {
            steps {
                docker build -t hello-world-app .
                echo "Docker image has built."
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