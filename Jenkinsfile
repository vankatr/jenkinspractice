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
                mail bcc: '', body: 'Hello', cc: '', from: '', replyTo: '', subject: 'Hey', to: 'vankat1520@gmail.com'
            }
        }
    }
}
