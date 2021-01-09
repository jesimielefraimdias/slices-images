FROM mysql:latest
  
LABEL mantainer="jesimiel.dias@gmail.com"
ENV FLASK_APP=src/App.py
ENV FLASK_RUN_HOST=0.0.0.0
ENV DEBIAN_FRONTEND=noninteractive
ENV MYSQL_ROOT_HOST=%
ENV MYSQL_USER=root
ENV MYSQL_ROOT_PASSWORD=computacao
ENV MYSQL_DATABASE=slice2

RUN apt-get update -y && apt-get install -y build-essential libssl-dev libmysqlclient-dev
RUN apt-get update -y && apt-get install -y python3-dev python3-pip python3-venv git
RUN git clone https://github.com/jesimielefraimdias/slice2-env.git
WORKDIR /slice2-env
RUN python3 -m venv /slice2-env
RUN /bin/bash -c "source bin/activate && pip3 install wheel && pip3 install -r requirements.txt"
RUN pip3 install -r requirements.txt
#RUN /bin/bash -c "source bin/activate && python3 src/db.py"

EXPOSE 5000
#CMD ["flask", "run"]