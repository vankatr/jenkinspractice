pipeline {
    agent any

    stages {
        stage('One') {
            steps {
                echo 'This is number one'
            }
        }
        stage('Two') {
            steps {
                input ('Do you wanna continue?')
            }
        }
        stage('Three') {
            steps {
                echo "this is three"
            }
        }
    }
}
