FROM gliderlabs/alpine:3.1

MAINTAINER masschallenge dev team <dev@masschallenge.org>

RUN apk add --update \
    python \
    python-dev \
    py-pip \
    openssl \
    ca-certificates \
    build-base \
  && pip install virtualenv \
  && rm -rf /var/cache/apk/*

RUN apk --update add --virtual build-dependencies python-dev build-base wget \
  && apk del build-dependencies

