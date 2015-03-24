# kargo

This repository contains `Dockerfile` of  `kargo` for docker's automated build
published to the public docker hub registry.

Get acces to a terminal emulator in a web browser, using
a docker container.

## Base Docker Image

* [Ubuntu 12.04](https://registry.hub.docker.com/_/ubuntu/)

## Sources

* [GitHub](https://github.com/foliea/kargo)

## Installation

1. Install [docker](http://www.docker.com).

2. Download [automated build](https://registry.hub.docker.com/u/foliea/kargo) from public 
[docker hub registry](https://registry.hub.docker.com/):

    `docker pull foliea/kargo`

## Usage

First, run a kargo's container:

    docker run -d -p 7777:7777 foliea/kargo
    

Then, in your web browser:

  * http://127.0.0.1:7777

With `boot2docker`:

  * http://192.168.59.103:7777
