# kargo/ubuntu
#
# VERSION 1.0

FROM ubuntu

MAINTAINER Adrien Folie, folie.adrien@gmail.com

# Install basis

RUN apt-get install -y software-properties-common
RUN apt-get install -y python-software-properties
RUN apt-get install -y python
RUN apt-get install -y make
RUN apt-get install -y g++
RUN apt-get install -y curl

RUN echo "deb http://us.archive.ubuntu.com/ubuntu/ precise universe" >> /etc/apt/sources.list

RUN add-apt-repository -y ppa:chris-lea/node.js

# Make sure the package repository is up to date

RUN apt-get update

# Install node.js and npm

RUN apt-get install -y nodejs

# Install tty.js through npm

RUN npm install tty.js

# Start tty daemon

ENTRYPOINT ["/node_modules/.bin/tty.js", "-p", "4224"]

# Port binding

EXPOSE 4224
