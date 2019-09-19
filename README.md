Dockerized JSON Server
============

[![Circle CI](https://circleci.com/gh/William-Yeh/docker-json-server.svg?style=shield)](https://circleci.com/gh/William-Yeh/docker-json-server) [![Build Status](https://travis-ci.org/William-Yeh/docker-json-server.svg?branch=master)](https://travis-ci.org/William-Yeh/docker-json-server)

## FORK

Containerized Mock/Fake/Quick REST api serving up a static json file + a small admin UI at index.html

I have forked the original repo to add an angular based [admin-ui](https://github.com/lalyos/fast-prototyping-with-ng-and-json-server) to [json-server](https://github.com/typicode/json-server).

basic usage:
```
docker run -d \
  --name json-server \
  -p 3000:3000 \
  lalyos/json-server
```

if you want to use a modified issues.json for start:
```
docker run -d \
  --name json-server \
  -v $PWD/:/custom \
  -p 3000:3000 \
  lalyos/json-server /custom/issues.json
```

or with a sample json from any http endpoint
```
docker run -d \
  --name json-server \
  -p 3000:3000 \
  lalyos/json-server https://gist.githubusercontent.com/lalyos/2be21105e3607b4981c85a542cedc7fc/raw/issues.json

```

## Summary

Repository name in Docker Hub: **[williamyeh/json-server](https://hub.docker.com/r/williamyeh/json-server/)**

This repository contains Dockerized [JSON Server](https://github.com/typicode/json-server), published to the public [Docker Hub](https://hub.docker.com/) via **automated build** mechanism.



## Configuration

This docker image contains the following software stack:

- Alpine 3

- Node.js 10

- JSON Server

Total image size is less than 30 MB.


### Dependencies

- [`node:10-alpine`](https://hub.docker.com/_/node/)


### History

- 1.0 - Initial release.
- 1.1 - Updated base image and json-server version.
- 1.1.1 - Add '--host' cli arguments for convenience.


## Installation

```
$ docker pull williamyeh/json-server
```



## Usage


#### Show usage

```
$ docker run --rm williamyeh/json-server
```


#### Server example

```
$ docker run  \
      -p 3000:3000  -v `pwd`:/data  \
      williamyeh/json-server        \
      --watch db.json
```

#### More examples

Most examples documented in [JSON Server project site](https://github.com/typicode/json-server) will work.
