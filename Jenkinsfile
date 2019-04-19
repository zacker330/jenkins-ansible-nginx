pipeline{
  agent any
  stages{
    stage("deploy nginx"){
      steps{
        sh "ansible-playbook -i env-conf/test  playbook/playbook.yaml"
      }
    }
  }
}