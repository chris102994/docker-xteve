 ## [chris102994/docker-xteve](https://github.com/chris102994/docker-xteve)

[![https://xteve.de/](https://repository-images.githubusercontent.com/199413814/f26b8300-b564-11e9-9e8d-196438cee819)](https://xteve.de/)

 
 [![Build Status](https://travis-ci.com/chris102994/docker-xteve.svg?branch=master)](https://travis-ci.com/chris102994/docker-xteve)
 [![Image Size](https://img.shields.io/microbadger/image-size/christopher102994/docker-xteve/alpine-3.10)](https://hub.docker.com/repository/docker/christopher102994/docker-xteve)
 [![Image Layers](https://img.shields.io/microbadger/layers/christopher102994/docker-xteve/alpine-3.10)](https://hub.docker.com/repository/docker/christopher102994/docker-xteve)
 [![Image Pulls](https://img.shields.io/docker/pulls/christopher102994/docker-xteve)](https://hub.docker.com/repository/docker/christopher102994/docker-xteve)
 
## Outside Packages
* Built on my [Base Image](https://github.com/chris102994/docker-base-image)
  * [xTeVe](https://xteve.de/) - M3U Proxy for Plex DVR and Emby Live TV.

## Docker
```
docker run \
	--name=docker-xteve \
	-p 34400:34400 \
	-v </path/to/appdata/config>:/config \
	-e XTEVE_PORT=34400 `optional unless you change the port mapping` \
	--restart unless-stopped \
	christopher102994/docker-xteve:alpine-3.10
```

## Parameters
Container specific parameters passed at runtime. The format is `<external>:<internal>` (e.g. `-p 443:22` maps the container's port 22 to the host's port 443).

| Parameter | Function |
| -------- | -------- |
| -p 34400 | The web UI port. |
| -v /config | The directory where the application will store configuration information. |
| -e XTEVE_PORT | This must match the port you map to the container so that xteve can correctly forward the stream. (Default=34400) |

## Application Setup

The admin interface is available at `http://<ip>:<port>/web/`
