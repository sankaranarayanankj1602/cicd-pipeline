pipeline {
   agent any
   tool {
        python 'Python3' 
        }
   stages {
       stage('Clone Repository') {
           steps {
               git branch: 'main', url: 'https://github.com/sankaranarayanankj1602/cicd-pipeline.git'
           }
       }
       stage('Build') {
           steps {
               sh 'echo Building the project...'
               sh 'python3 main.py'
           }
       }
       stage('CI/CD Completion') {
           steps {
               sh 'echo CI/CD Completed'
           }
       }
   }
}