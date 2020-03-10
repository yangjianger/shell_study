pipeline {
   agent any

   stages {
      stage('pull code') {
         steps {
            echo 'pull code'
            checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: '58b40e0b-d5a1-47a6-a65c-02088c35590d', url: 'git@github.com:yangjianger/shell_study.git']]])
         }
      }

      stage('build project') {
         steps {
            echo 'build project'
            sh label: '', script: '''cd /var/lib/jenkins/workspace
zip -r web_pipeline.zip web_pipeline'''
         }
      }
   }
}
