FROM alpine:latest
MAINTAINER soywod <clement.douin@gmail.com>

RUN \
  apk add --update vim git && \
  rm -rf /var/cache/* /var/log/* /var/tmp/* && \
  mkdir /var/cache/apk

WORKDIR /root/workdir
COPY entrypoint.sh /tmp/entrypoint

ENTRYPOINT ["/bin/sh", "/tmp/entrypoint"]
