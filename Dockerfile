FROM ubuntu:14.04.05
MAINTAINER samlty <samlty.xu@gmail.com>

ENV SOURCE_DIR /opt/openair_cn

RUN apt-get update
RUN apt-get -y install vim git
RUN git clone https://gitlab.eurecom.fr/oai/openair-cn.git $SOURCE_DIR
RUN cd $SOURCE_DIR/SCRIPTS && ./build_hss -i
