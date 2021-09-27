#!groovy

node('master')
{
stage('checkout')

        {
		//checkt scm//test
          checkout scm
        }
 stage('Deploy'){
	sh  '''if [ ! -d "/var/lib/jenkins/workspace/demo/.terraform" ]; then
           terraform init

fi'''
         properties([parameters([choice(choices: ['ubuntu16', 'ubuntu18'], description: '', name: 'version')])])
         sh 'terraform plan  -var env=${version} -var aws_access_key_id=${AWS_ACCESS_KEY_ID} -var aws_secret_access_key=${AWS_SECRET_ACCESS_KEY} -out=plan'
	
         sh'terraform apply  plan'
        }
}
