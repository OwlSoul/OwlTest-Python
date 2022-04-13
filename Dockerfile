FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive
RUN useradd -ms /bin/bash owltest
RUN apt-get update && apt-get install -y python3=3.8.2-0ubuntu2 \
                                         python3-pip=20.0.2-5ubuntu1.6 \
                                         pylint=2.4.4-2 \
                                         git=1:2.25.1-1ubuntu3.3 &&\
                      apt-get clean

RUN pip3 install pytest==7.1.1 \
                 pytest-cov==3.0.0 \
                 pykeepass==4.0.1

USER owltest
WORKDIR /home/owltest
