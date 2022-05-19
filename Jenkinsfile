pipeline {
    agent any
    stages {
        stage('Build-application') {
            steps {
                script {
                    withCredentials([usernamePassword(credentialsId: 'docker-login', passwordVariable: 'PASSWORD', usernameVariable: 'USERNAME')]) {
                        sh """
                            docker build -t abdelrahman58/dockerizing-ruby-drkiq:latest .
                            docker login -u '${USERNAME}' -p '${PASSWORD}'
                            docker push abdelrahman58/dockerizing-ruby-drkiq:latest
                        """
                     }   
                    }

                }
             }
 
    }
