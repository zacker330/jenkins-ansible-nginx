pipeline{
  agent { label "ansible"}
  stages{
    stage("deploy nginx"){
      steps{
        sh "ansible-playbook -i env-conf/test  playbook/playbook.yaml"
      }
    }
  }
}