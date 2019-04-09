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
sh 'terraform plan  -var aws_access_key_id=env.AWS_ACCESS_KEY_ID -var aws_secret_access_key=env.AWS_SECRET_ACCESS_KEY -out=plan'
	
        sh'terraform apply  -var aws_access_key_id=env.AWS_ACCESS_KEY_ID -var aws_secret_access_key=env.AWS_SECRET_ACCESS_KEY plan'


        }
}
