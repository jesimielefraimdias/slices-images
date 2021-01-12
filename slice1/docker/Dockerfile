FROM ubuntu:latest

LABEL mantainer="jesimiel.dias@gmail.com"
#Instaldo dependências do python e pip
RUN apt-get update -y && apt-get install -y python3-dev python3-pip git
#Adiciono o local e removo a interação com o usuário
RUN ln -fs /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime
RUN export DEBIAN_FRONTEND=noninteractive
RUN apt-get install -y tzdata
RUN dpkg-reconfigure --frontend noninteractive tzdata
#Dependências para manipulação de arquivos e vídeos
RUN apt-get update -y && apt-get install -y libgtk2.0-dev libgl1-mesa-glx
#Faço o clone do meu servidor do git e defino área de trabalho
RUN git clone https://github.com/jesimielefraimdias/slice1-env.git
WORKDIR /slice1-env
#Instalo as dependências do projeto a partir do requirements
RUN pip3 install -r requirements.txt
#Seto as váriaveis, mostra a porta 5000 e executa o flask que é nosso framework
ENV FLASK_APP=App.py
ENV FLASK_RUN_HOST=0.0.0.0
EXPOSE 5000
CMD ["flask", "run"]