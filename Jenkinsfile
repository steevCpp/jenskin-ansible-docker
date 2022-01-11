node{
    stage('clone') {
    git 'https://github.com/steevCpp/jenkins-ansible.git'
    }
    
    stage('Build') {
    sh 'mvn clean install package'
    }
    
    stage('Deploiement') {
    ansiblePlaybook become: true, inventory: 'hosts', playbook: 'playbook.yml'
    }  
    
    }
