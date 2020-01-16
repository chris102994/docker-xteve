# Pull the base image
FROM christopher102994/docker-base-img:alpine-3.10
MAINTAINER chris102994<chris102994@yahoo.com>
ARG BUILD_DATE
ARG VERSION
ARG VCS_REF
LABEL org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/chris102994/docker-xteve"
# Package URLs
ARG XTEVE_URL=https://github.com/xteve-project/xTeVe-Downloads/blob/master/xteve_linux_amd64.tar.gz?raw=true
# ENV Vars for Builder Script
RUN	echo "##### Downloading Virtual Build Dependencies #####" && \
		apk add --no-cache --virtual=build-dependencies \
			curl \
			tar \
			tzdata \
			xz && \
	echo "##### Downloading Container items via Curl #####" && \
		echo "##### Downloading xTeVe #####" && \
			curl -L -s ${XTEVE_URL} | tar xvzf - -C /app --strip-components 1 && \
	echo "##### Downloading Runtime Packages #####" && \
		apk add --no-cache \
			 vlc \
			 ffmpeg && \
	echo "##### Cleaning Up #####" && \
		apk del --purge build-dependencies

# Web Interface Port
EXPOSE 34400
#Work Dir
WORKDIR /config
# Add Local Files
COPY rootfs/ /

