#Fazendo o build da imagem
sudo docker build -t ubuntu-slice2 .
#Adicionando tag a imagem criada 
docker tag ubuntu-slice2 jesimielefraimdias/ubuntu-slice2:1.0.0
#login no docker hub
docker login
#Subindo para o repositório do dockerhub
docker push jesimielefraimdias/ubuntu-slice2:1.0.0
