        stage('Build and Push Docker Image...') {
            steps {
                script {
                  // CUSTOM REGISTRY
                    docker.withRegistry('https://registry.hanubes.han') {
                      
                        /* Build the container image */            
                        def dockerImage = docker.build("pepijnbloem:${env.BUILD_ID}")
                      
                        /* Push the container to the custom Registry */
                        dockerImage.push()
                      
                    }
                    /* Remove docker image*/
                    sh 'docker rmi -f pepijnbloem:${env.BUILD_ID}'   
               }
            } 
        }
