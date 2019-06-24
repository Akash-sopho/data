FROM ubuntu:16.04

LABEL version="1.0"

ENV DEBIAN_FRONTED=noninteractive

RUN apt-get update && apt-get upgrade -y git wget openjdk-8-jdk
RUN cd /
RUN  git clone https://github.com/swaldman/eth-command-line.git --branch 0.1.10
RUN /bin/bash -c 'chmod +x /eth-command-line/sbtw'

ENTRYPOINT bash
