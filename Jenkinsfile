pipeline{
  agent { label "ansible"}
  environment{
    ANSIBLE_HOST_KEY_CHECKING = false
  }
  triggers {
    	// 每分钟判断一次代码是否有变化
   		pollSCM('H/1 * * * *')
  }
  stages{
    stage("deploy nginx"){
      steps{
        sh "ansible-playbook -i env-conf/dev  deploy/playbook.yaml"
      }
}}}