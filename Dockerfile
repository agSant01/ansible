FROM ubuntu:jammy AS base

WORKDIR /usr/local/bin
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y software-properties-common curl git build-essential && \
    apt-add-repository -y ppa:ansible/ansible && \
    apt-get update && \
    apt-get install -y curl git ansible build-essential && \
    apt-get clean autoclean && \
    apt-get autoremove --yes

FROM base AS prime
RUN apt-get update && apt-get install -y sudo

RUN adduser --uid 1000 --disabled-password admin
RUN echo "admin:root" | chpasswd
RUN adduser admin sudo

USER admin
WORKDIR /home/admin

ENV USER=admin

FROM prime
COPY . ansible
ENTRYPOINT [ "/bin/bash" ]
