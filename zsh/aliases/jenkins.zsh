#""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
#"""                                 Jenkins                                  """
#""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
alias jenkins="docker run --name jenkins --publish 8080:8080 --publish 50000:50000 --volume $HOME/Jenkins:/var/jenkins_home jenkins/jenkins:lts"
alias jenkins-start="docker container start jenkins"
alias jenkins-stop="docker container stop jenkins"
#""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
