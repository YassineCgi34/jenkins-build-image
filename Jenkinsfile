node {
    def app
        stage('Clone') {
            checkout scm
        }
        stage('Build image') {
            app = docker.build("yass/nginx")
        }
        stage('Run image') {
            docker.image('yass/nginx').withRun('-p 80:80') { c ->
                sh 'docker ps'
                sh 'curl localhost'
            }
        }
}