#Entrando no projeto
gcloud config set project seminario-selice

#Setando  a minha zona
export MY_ZONE=southamerica-east1-a

# Criando um CLUSTER chamado "seminario" com 4 nós
gcloud container clusters create seminario --zone $MY_ZONE --num-nodes 4

#Recebendo meu projeto
git clone https://github.com/jesimielefraimdias/slices-images.git

#Na pasta /slices-images/slice1 executar o comando que criará o pod e o service
kubectl create -f slice1.yaml
#Na pasta /slices-images/slice2 executar o comando que criará o pod e o service
kubectl create -f slice2.yaml

#Verifica os pods
kubectl get pods

#Verifica os services
kubectl get services
#Crio um service a partir de outro service, porém passando o parâmetro LoadBalancer para 
#expor o ip.
kubectl expose service ubuntu-slice1 --port=5001 --target-port=5000 --name=slice1 --type LoadBalancer
kubectl expose service ubuntu-slice2 --port=5000 --target-port=5000 --name=slice2 --type LoadBalancer
#Deleto o antigo service
kubectl delete service/ubuntu-slice1
kubectl delete service/ubuntu-slice2
#Aplica o autoscale na slice 1
kubectl autoscale deployment ubuntu-slice1 --cpu-percent=50 --min=1 --max=10