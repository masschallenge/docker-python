FROM gliderlabs/alpine:3.1

MAINTAINER masschallenge dev team <dev@masschallenge.org>

RUN apk --update add python py-pip openssl ca-certificates

RUN apk --update add --virtual build-dependencies python-dev build-base wget \
  && apk del build-dependencies

RUN adduser -u 9000 -D app

USER app