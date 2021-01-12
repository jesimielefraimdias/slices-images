FROM mysql:latest
  
LABEL mantainer="jesimiel.dias@gmail.com"

#Depêndencias do MYSQL, pthon3 e pip e venv
RUN apt-get update -y && apt-get install -y build-essential libssl-dev libmysqlclient-dev
RUN apt-get update -y && apt-get install -y python3-dev python3-pip python3-venv git
#Clono o projeto
RUN git clone https://github.com/jesimielefraimdias/slice2-env.git
#Defino a área de trabalho e instalo as dependências
WORKDIR /slice2-env
RUN python3 -m venv /slice2-env
RUN /bin/bash -c "source bin/activate && pip3 install wheel && pip3 install -r requirements.txt"
RUN pip3 install -r requirements.txt
#Mostra a porta 5000 para o usuário
EXPOSE 5000
