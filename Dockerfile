FROM ubuntu:16.04

WORKDIR /root

RUN apt-get update -y \
    && apt-get install -y wget libperl5.22 \
    && wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz \
    && tar -zxvf install-tl-unx.tar.gz --strip 1

COPY texlive.profile /root/texlive.profile
# VOLUME texlive-packages:/usr/local/texlive/2017

RUN ./install-tl --profile=texlive.profile
