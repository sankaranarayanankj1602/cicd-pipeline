pipeline {
   agent any
   tool {
        python 'Python3' 
        }
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

                    # Create virtual environment
                    python3 -m venv ${VENV_DIR}

                    # Activate and upgrade pip
                    . ${VENV_DIR}/bin/activate
                    pip install --upgrade pip
                '''
               sh 'echo Building the project...'
               sh '''
                    . ${VENV_DIR}/bin/activate
                      python main.py
               '''
           }
       }
       stage('CI/CD Completion') {
           steps {
               sh 'echo CI/CD Completed'
           }
       }
   }
}