FROM ubuntu:trusty
MAINTAINER Vladislav Shub <vlad6il@gmail.com>

ENV LANG en_US.UTF-8
ENV DEBIAN_FRONTEND noninteractive
RUN locale-gen $LANG

RUN apt-get install -qy \
  software-properties-common \
  && add-apt-repository ppa:deluge-team/ppa \
  && apt-get update -q \
  && apt-get upgrade -qy \
  && apt-get install -qy \
  deluged \
  deluge-web \
  deluge-console

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
