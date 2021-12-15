FROM alpine:edge

RUN apk add --update pike~8.0.1116 \
    --repository=http://dl-cdn.alpinelinux.org/alpine/edge/testing/ \
  && rm -rf /var/cache/apk/* 
