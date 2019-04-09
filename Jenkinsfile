#!groovy

node('master')
{
stage('checkout')

        {
          checkout scm
        }
 stage('Deploy'){
 	
  sh'terraform init'
  sh'terraform apply -out=plan'
  sh'terraform apply plan'     


        }
}
