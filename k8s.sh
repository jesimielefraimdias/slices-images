#Entrando no projeto
gcloud config set project seminario-selice
#
kubectl apply -f slice1.yaml
#
kubectl get pods

kubectl get services

kubectl expose deployment ubuntu --type LoadBalancer

--port=5000 --target-port=5000 --type LoadBalancer

kubectl expose service ubuntu --port=5001 --target-port=5000 --name=slice1 --type LoadBalancer