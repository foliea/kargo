## Kargo

Get acces to a terminal emulator in a web browser, using
a docker container.

### Usage

1. Get kargo image from docker hub:

  `$ docker pull foliea/kargo`

2. Run a container from this image:

  `$ docker run -d -p 7777:7777 foliea/kargo`

3. On your web browser:

  http://127.0.0.1:7777

  If you use boot2docker:

  http://192.168.59.103:7777
