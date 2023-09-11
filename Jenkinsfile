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
                emailext body: 'This is an ex mail', subject: 'Hi', to: 'vankat1520@gmail.com'
            }
        }
    }
}
