az account set --subscription "AEMSP 2.1 実施用"
az aks get-credentials --resource-group env2-aks --name env2aks2
cd microsofrvices-demo
cd deploy
cd kubernetes
kubectl create namespace sock-shop
kubectl apply -f complete-demo.yaml
kubectl -n sock-shop expose deployment front-end --type=LoadBalancer --name=front-end-lb
kubectl 
kubectl delete namespace sock-shop