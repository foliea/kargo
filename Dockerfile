# foliea/kargo
#
# VERSION 1.0

FROM ubuntu:12.04

MAINTAINER Adrien Folie, folie.adrien@gmail.com

# Make sure the package repository is up to date

RUN echo "deb http://us.archive.ubuntu.com/ubuntu/ precise universe" >> /etc/apt/sources.list

RUN apt-get update

# Install basis

RUN apt-get install -y software-properties-common
RUN apt-get install -y python-software-properties
RUN apt-get install -y python
RUN apt-get install -y make
RUN apt-get install -y g++
RUN apt-get install -y curl

# Add node.js official repository

RUN add-apt-repository -y ppa:chris-lea/node.js

# Update the package repository

RUN apt-get update

# Install node.js and npm

RUN apt-get install -y nodejs

# Install tty.js through npm

RUN npm install tty.js

# Start tty.js

CMD ["/node_modules/.bin/tty.js", "--port", "7777"]

# Port binding

EXPOSE 7777
