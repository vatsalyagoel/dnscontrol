# syntax = docker/dockerfile:1.4

FROM alpine:3.16.3@sha256:b95359c2505145f16c6aa384f9cc74eeff78eb36d308ca4fd902eeeb0a0b161b as RUN

#RUN --mount=type=cache,target=/var/cache/apk \
#    apk update \
#    && apk add ca-certificates \
#    && update-ca-certificates

COPY dnscontrol /usr/local/bin/

WORKDIR /dns

ENTRYPOINT ["/usr/local/bin/dnscontrol"]
