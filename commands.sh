# Lista todos os containers instalados
docker ps 
# comandos serão executados dentro do container
docker exec ID + comandos ssh 
# combinação de comandos que fazem entrar no bash
docker exec -it ID /bin/bash 
# Para um container pelo ID
docker stop ID 
docker kill ID
# Apaga todas imagens e containers
docker system prune -a