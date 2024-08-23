FROM ubuntu:18.04

LABEL maintainer="Alexis Ahmed"

RUN groupadd -r alexis && useradd -r -g alexis alexis

RUN chsh -s /user/sbin/nologin root

RUN apt install 

# Environment Variables
ENV HOME /home/alexis
ENV DEBIAN_FRONTEND=noninteractive
