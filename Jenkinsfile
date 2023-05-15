pipeline {
    agent any
	stages {
		stage("git clone"){
			steps {
                // Get some code from a GitHub repository
                git url: 'https://github.com/Vishnu4226/jenkins-terraform-test.git', branch: 'main'
            }
		}
		stage("Init"){
			steps{
				sh "terraform init"
			}
		}
		/**stage("Sec"){
			steps{
				sh "tfsec"
			}
		}**/
		stage("Plan"){
			steps{
			//	sh "terraform plan"
			echo "test tf plan"
			}
			post {
			success {
			mail bcc: '', body: 'Test Mail', cc: '', from: '', replyTo: '', subject: 'Test Mail', to: 'gonuguntavishnu@gmail.com'
			}
			}
		}
		stage("Apply or Destroy") {
            steps {
				input message: 'Do you want to approve the deployment?', ok: 'Yes'
				/*sh """
				terraform ${action} --auto-approve
				""" */
				echo "test tf apply"
			   }
            
        }
    }
}
