        stage('Build and Push Docker Image...') {
            steps {
                script {
                  // CUSTOM REGISTRY
                    docker.withRegistry('https://registry.example.com') {
                      
                        /* Build the container image */            
                        def dockerImage = docker.build("my-image:${env.BUILD_ID}")
                      
                        /* Push the container to the custom Registry */
                        dockerImage.push()
                      
                    }
                    /* Remove docker image*/
                    sh 'docker rmi -f my-image:${env.BUILD_ID}'   
               }
            } 
        }
