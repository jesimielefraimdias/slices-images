FROM ubuntu:latest
LABEL mantainer="jesimiel.dias@gmail.com"

RUN apt-get update -y && apt-get install -y build-essential libssl-dev libmysqlclient-dev
RUN apt-get update -y && apt-get install -y python3-dev python3-pip python3-venv git
RUN git clone https://github.com/jesimielefraimdias/slice2-env.git
WORKDIR /slice2-env
RUN python3 -m venv /slice2-env

EXPOSE 5000