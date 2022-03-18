
helm repo add jenkins https://charts.jenkins.io --force-update

helm diff upgrade --allow-unreleased --detailed-exitcode jenkins --namespace jenkins jenkins/jenkins -f ./jenkins.yaml
#helm upgrade -i jenkins --create-namespace --namespace jenkins jenkins/jenkins -f ./jenkins.yaml

helm repo remove jenkins
