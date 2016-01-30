FROM ubuntu:trusty

ENV LANG en_US.UTF-8
ENV DEBIAN_FRONTEND noninteractive
RUN locale-gen $LANG

RUN apt-get update -q
RUN apt-get upgrade -qy
RUN apt-get install -qy software-properties-common
RUN add-apt-repository ppa:deluge-team/ppa
RUN apt-get update -q && apt-get upgrade -qy
RUN apt-get install -qy deluged deluge-web deluge-console

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
