 [![Build Status](https://travis-ci.com/chris102994/docker-xteve.svg?branch=master)](https://travis-ci.com/chris102994/docker-xteve)

## Outside Packages
* Built on my [Base Image](https://github.com/chris102994/docker-base-image)
  * [xTeVe](https://xteve.de/) - M3U Proxy for Plex DVR and Emby Live TV.

## Docker
```
docker run \
	--name=docker-xteve \
	-p 34400:34400 \
	-v </path/to/appdata/config>:/config \
	--restart unless-stopped \
	christopher102994/docker-xteve:alpine-3.10
```

## Parameters
Container specific parameters passed at runtime. The format is `<external>:<internal>` (e.g. `-p 443:22` maps the container's port 22 to the host's port 443).

| Parameter | Function |
| -------- | -------- |
| -p 34400 | The web UI port. |
| -v /config | The directory where the application will store configuration information. |
