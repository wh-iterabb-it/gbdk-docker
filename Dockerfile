FROM ubuntu
LABEL version="0.1.1"
LABEL description="Docker image to build Gameboy ROMs with GBDK without installing either"
LABEL maintainer="BeauBouchard"
SHELL ["/bin/bash", "-c"]

RUN apt-get update
RUN apt-get update && \
    apt-get install -y apt-utils vim && \
    apt-get install -y git build-essential bison curl wget bzip2 xz-utils make git
RUN curl https://github.com/gbdk-2020/gbdk-2020/releases/latest/download/gbdk-linux64.tar.gz
WORKDIR /home
RUN tar -xvzf gbdk-linux64.tar.gz -C gbdk 
RUN apt-get clean

WORKDIR /home/gbdk
ENV GBDKDIR /home/gbdk/
RUN make
RUN make install
ENV GBDKDIR /opt/gbdk/

WORKDIR /home/gbdk/gbdk-lib/examples/gb
RUN make
