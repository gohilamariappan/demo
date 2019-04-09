#!groovy

node('master')
{
stage('checkout')

        {
          checkout scm
        }
 stage('Deploy'){
         
 	sh'echo ${AWS_ACCESS_KEY_ID}'
  //sh'terraform init'
//sh 'terraform plan  -out=plan'
//sh'terraform apply  plan'


        }
}
