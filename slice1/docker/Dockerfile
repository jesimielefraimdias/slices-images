FROM ubuntu:latest

LABEL mantainer="jesimiel.dias@gmail.com"

RUN apt-get update -y && apt-get install -y python3-dev python3-pip git

RUN ln -fs /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime
RUN export DEBIAN_FRONTEND=noninteractive
RUN apt-get install -y tzdata
RUN dpkg-reconfigure --frontend noninteractive tzdata

RUN apt-get update -y && apt-get install -y libgtk2.0-dev libgl1-mesa-glx

RUN git clone https://github.com/jesimielefraimdias/slice1-env.git
WORKDIR /slice1-env

RUN pip3 install -r requirements.txt
ENV FLASK_APP=App.py
ENV FLASK_RUN_HOST=0.0.0.0
EXPOSE 5000
CMD ["flask", "run"]