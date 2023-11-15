pipeline{
    agent any 
    parameters {
          choice(name: 'NAME', choices: ['One', 'Two', 'Three'], description: 'Pick name')
          choice(name: 'LASTNAME', choices: ['HELLO', 'FELLO', 'MOTO'], description: 'Pick lastname')
          choice(name: 'SHOW', choices: ['true', 'false'], description: 'Pick something')

        
    }
    stages{
        stage("Build"){
            steps{
               sh 'echo "Build stage executing shell script my_fst_jenkins.sh '
               sh ' bash my_fst_jenkins.sh ${param.NAME} ${param.LASTNAME} ${param.SHOW}'  
            } 
           
        }
        stage('test'){
            steps{
               sh 'echo "Running test script from qa" '  
            } 
           
        }
        stage('Deploy'){
            steps{
               sh 'echo "Deploying on k8s cluster"'  
            } 
           
        }  
    }

    post{
        always{
            echo "========always========"
        }
        success{
            echo "========pipeline executed successfully ========"
        }
        failure{
            echo "========pipeline execution failed========"
        }
    }
}
