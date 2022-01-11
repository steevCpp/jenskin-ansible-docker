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
    stage('Contenair app') {
    sh 'sudo docker run -d -p 222 --name monconteanair monimage'
    }
    // stage('Deploiement') {
    // ansiblePlaybook become: true, inventory: 'hosts', playbook: 'playbook.yml'
    // }  
    
    }
