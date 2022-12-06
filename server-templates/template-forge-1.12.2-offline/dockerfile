FROM ubuntu:22.04

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install openjdk-8-jre-headless

COPY ./assets/  /minecraft/
COPY ./mods/    /minecraft/mods/
COPY ./plugins/ /minecraft/plugins/

WORKDIR /minecraft

RUN echo "eula=true" > eula.txt
RUN java -jar forge-1.12.2-14.23.5.2859-installer.jar --installServer
RUN rm forge-1.12.2-14.23.5.2859-installer.jar

ENTRYPOINT ["./run_server.sh"]