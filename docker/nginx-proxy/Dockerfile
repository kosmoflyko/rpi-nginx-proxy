FROM kosmoflyko/rpi-alpine:3.7

MAINTAINER Vladislav Gasanov <kosmoflyko@gmail.com>

ONBUILD RUN .prepare
RUN apk update && \
    apk upgrade && \
    apk add nginx libressl && \
    rm -rf /var/cache/apk/* && \
    mkdir -p /etc/ssl/acme/

VOLUME ["/etc/nginx/", "/var/log/nginx/", "/etc/ssl/acme/"]
EXPOSE 80 443

ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
