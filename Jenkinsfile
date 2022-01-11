node{
    stage('clone') {
    git 'https://github.com/steevCpp/jenskin-ansible-docker'
    }
    
    stage('Build') {
    sh 'mvn clean install package'
    }
    
    stage('image build') {
    sh 'sudo docker build -t monimage .'
    }
    //stage('Contenair app') {
    //sh 'sudo docker run -d -p 29:2222 --name monconteanair monimage'
    //}
    stage('push dockerhub') {
    sh 'sudo docker --tag monimage steevdev7/my-private-repo:2.0'
    sh 'sudo docker push '

    }
    // stage('Deploiement') {
    // ansiblePlaybook become: true, inventory: 'hosts', playbook: 'playbook.yml'
    // }  
    
    }
