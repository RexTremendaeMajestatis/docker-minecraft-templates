FROM ubuntu:22.04

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install openjdk-18-jre-headless

COPY ./assets/ /minecraft/

WORKDIR /minecraft

RUN echo "eula=true" > eula.txt

ENTRYPOINT ["./run_server.sh"]