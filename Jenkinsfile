node{
    stage('clone') {
    git 'https://github.com/steevCpp/jenskin-ansible-docker'
    }
    
    stage('Build') {
    sh 'mvn clean install package'
    }
    
    stage('image build') {
    sh 'sudo docker build -t steevdev7/my-private-repo:2.0 .'
    }
    //stage('Contenair app') {
    //sh 'sudo docker run -d -p 29:2222 --name monconteanair monimage'
    //}
    
    stage('push dockerhub') {
    
    withCredentials([string(credentialsId: 'dockerhub', variable: 'dockerhub')]) {
        sh 'docker login -u steevdev7 -p ${dockerhub}'
    }
    sh 'sudo docker push steevdev7/my-private-repo:2.0'

    }
    // stage('Deploiement') {
    // ansiblePlaybook become: true, inventory: 'hosts', playbook: 'playbook.yml'
    // }  
    
    }
