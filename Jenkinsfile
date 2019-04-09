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
  sh'terraform plan -out=plan'
  sh'terraform apply plan'     


        }
}
