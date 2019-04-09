#!groovy

node('master')
{
stage('checkout')

        {
          checkout scm
        }
 stage('Deploy'){
sh  '''if [ -d "/var/lib/jenkins/workspace/demo/.terraform" ] ;
 then{
    properties([parameters([choice(choices: ['ubuntu16', 'ubuntu18'], description: '', name: 'version')])])
         terraform plan  -var env=${version} -var aws_access_key_id=${AWS_ACCESS_KEY_ID} -var aws_secret_access_key=${AWS_SECRET_ACCESS_KEY} -out=plan
	 terraform apply  plan
	 }
 else
	  {
	  terraform init
      properties([parameters([choice(choices: ['ubuntu16', 'ubuntu18'], description: '', name: 'version')])])
         terraform plan  -var env=${version} -var aws_access_key_id=${AWS_ACCESS_KEY_ID} -var aws_secret_access_key=${AWS_SECRET_ACCESS_KEY} -out=plan
         terraform apply  plan
         }
	  
fi'''


        }
}
