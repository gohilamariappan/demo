#!groovy

node('master')
{
stage('checkout')

        {
          checkout scm
        }
 stage('Deploy'){
         sh'set +x'
 	
  sh'terraform init'
  sh label: '', script: '''	terraform plan  -var aws_access_key_id=\'${AWS_ACCESS_KEY_ID}\' -var aws_secret_access_key=\'${AWS_SECRET_ACCESS_KEY}\' -out=plan
	'''
  sh label: '', script: '''	terraform apply  -var aws_access_key_id=\'${AWS_ACCESS_KEY_ID}\' -var aws_secret_access_key=\'${AWS_SECRET_ACCESS_KEY}\' plan
	'''


        }
}
