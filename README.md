# Project

[Docs](/.docker/README.md) - docker description

## Prepare workstation

### [example - native](https://docker.com/)
### [example - docker-machine](http://telegra.ph/Docker-on-windows-10-AU-10-13) - use windows docker-machine and wsl (optional)

## Prepare network

* `docker network create backend`
* `docker network create frontend`
* `docker network create local`

## Prepare plugins

### [local-persist](https://github.com/CWSpear/local-persist)

#### example - windows

Plugin for local-persist volume driver

```bash
docker run -d \
    -v /run/docker/plugins/:/run/docker/plugins/ \
    -v /run/docker/plugins/restart/:/var/lib/docker/plugin-data/ \
    cwspear/docker-local-persist-volume-plugin
```

#### example - linux (with systemctl)

`curl -fsSL https://raw.githubusercontent.com/CWSpear/local-persist/master/scripts/install.sh | sudo bash`

#### example - linux (with upstart)

`curl -fsSL https://raw.githubusercontent.com/CWSpear/local-persist/master/scripts/install.sh | sudo bash -s -- --upstart`

## Prepare .env

Copy `.env.dist` to `.env` and set your need value

## Start containers

* `make up` or `docker-compose up`

## Init project

1. `make composer c=install` or `make composer c=install --no-dev`

## Example - start server


* `make server-start p=80`
* Open `http://<your_docker/localhost_ip>:8080`