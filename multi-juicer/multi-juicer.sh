
helm repo add multi-juicer https://iteratec.github.io/multi-juicer --force-update

helm diff upgrade --allow-unreleased --detailed-exitcode multi-juicer multi-juicer/multi-juicer -f ./multi-juicer.yaml
#helm upgrade -i multi-juicer multi-juicer/multi-juicer -f ./multi-juicer.yaml

helm repo remove multi-juicer
