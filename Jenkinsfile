node{
    stage('clone') {
    git 'https://github.com/steevCpp/jenskin-ansible-docker'
    }
    
    stage('Build') {
    sh 'mvn clean install package'
    }
    
    stage('Deploiement') {
    ansiblePlaybook become: true, inventory: 'hosts', playbook: 'playbook.yml'
    }  
    
    }
