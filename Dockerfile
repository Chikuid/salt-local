FROM ubuntu:16.04

RUN apt-get update

RUN apt-get install curl -y

RUN curl -fsSL -o /usr/share/keyrings/salt-archive-keyring.gpg https://repo.saltproject.io/py3/ubuntu/20.04/amd64/3003/salt-archive-keyring.gpg

RUN echo "deb [signed-by=/usr/share/keyrings/salt-archive-keyring.gpg] https://repo.saltproject.io/py3/ubuntu/20.04/amd64/3003 focal main" > sudo tee /etc/apt/sources.list.d/salt.list

RUN apt-get update

RUN apt-get install salt-minion -y

RUN apt-get install vim -y

COPY ./minion.conf /etc/salt/minion.d/minion.conf

VOLUME /srv/salt