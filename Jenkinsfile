pipeline{
  agent { label "ansible"}
  environment{
    ANSIBLE_HOST_KEY_CHECKING=False
  }
  stages{
    stage("deploy nginx"){
      steps{
        sh "ansible-playbook -i env-conf/test  playbook/playbook.yaml"
      }
    }
  }
}