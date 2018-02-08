# Project

[Docker docs](docker/README.md) - docker description

## Prepare workstation

* [docker-machine](http://telegra.ph/Docker-on-windows-10-AU-10-13) - use windows docker-machine and wsl (optional)

## Prepare network

* `docker network create backend`
* `docker network create frontend`
* `docker network create local`

## Prepare plugins (for windows only)

Plugin for local-persist volume driver

```bash
docker run -d \
    -v /run/docker/plugins/:/run/docker/plugins/ \
    -v /run/docker/plugins/restart/:/var/lib/docker/plugin-data/ \
    cwspear/docker-local-persist-volume-plugin
```

## Prepare .env

Copy `.env.dist` to `.env` and set your need value

## Start containers

* `docker-compose up -d` or `docker-compose up`

## Init project

Note: first step only for recreate of first time create project!

1. `docker-compose exec php composer create-project symfony/website-skeleton my-project`
1. `docker-compose exec php composer install`

## Start server

`docker-compose exec php bin/console server:start 0.0.0.0:80`

## Go

`http://192.168.99.100:8000`