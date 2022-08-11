FROM alpine:edge

RUN apk update && apk upgrade && \
  apk add --update pike~8.0.1738 \
    --repository=http://dl-cdn.alpinelinux.org/alpine/edge/testing/ \
  && rm -rf /var/cache/apk/* 
