pipeline {
   agent any
   stages {
       stage('Clone Repository') {
           steps {
               git branch: 'main', url: 'https://github.com/sankaranarayanankj1602/cicd-pipeline.git'
               sh 'echo Git lab repository Cloned'
           }
       }
       stage('Build') {
           steps {
            sh '''
                # Ensure Python is available
                    python3 --version
                '''
               sh 'echo Building the project...'
               sh '''
                      python3 main.py
               '''
           }
       }
       stage("Build C")
       {
        steps {
            sh '''
                make
            '''
        }
       }
       stage('Archive Artifacts') 
       {  
        steps 
        { 
            archiveArtifacts artifacts: 'sample_file.o', fingerprint: true 
            }
      }
       stage('CI/CD Completion') {
           steps {
               sh 'echo CI/CD Completed'
           }
       }
   }
}