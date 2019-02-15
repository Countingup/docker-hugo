# Hugo

[![Docker Automated build](https://img.shields.io/docker/build/countingup/hugo.svg)](https://hub.docker.com/r/countingup/hugo/builds/)

A minimal docker image for [Hugo](https://gohugo.io) which is a static site generator written in Go.

Based on the latest BusyBox 1.29 image from Docker Hub.

## Build locally

```
$ cd docker-hugo
$ docker build -t countingup/hugo .
```

## Run (will pull from dockerhub)

```
# Default (will output version)
$ docker run countingup/hugo

Hugo Static Site Generator v0.48 linux/amd64 BuildDate: 2018-08-29T06:33:51Z


# For interactive use (with tty)
$ docker run -it countingup/hugo /bin/sh

/ $
```
