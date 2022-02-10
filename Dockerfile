FROM ubuntu:latest

ENV LANG en_US.UTF-8
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -qy \
  software-properties-common locales

RUN locale-gen $LANG

RUN add-apt-repository ppa:deluge-team/ppa -y
RUN apt-get update -q
RUN apt-get upgrade -qy
RUN apt-get install -qy deluged deluge-web deluge-console
RUN apt-get autoremove -y
RUN apt-get autoclean -y
RUN apt-get clean

# Managment
#EXPOSE 58846
# Torrent ports
#EXPOSE 6881 6891
# Deluge-web
#EXPOSE 8112

# Torrent Client
#CMD ["deluged", "-c", "/config", "-d"]
# Web interface
#CMD ["deluge-web", "-c", "/data"]
