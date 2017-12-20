FROM kosmoflyko/rpi-alpine:3.7

MAINTAINER Vladislav Gasanov <kosmoflyko@gmail.com>

ONBUILD RUN .prepare
COPY ../../common/config/acme/acme-client /etc/periodic/weekly/acme-client
RUN apk update && \
    apk upgrade && \
    apk add dcron acme-client libressl && \
    rm -rf /var/cache/apk/* && \
    mkdir -p /var/log/cron && \
    touch /var/log/cron/cron.log && \
    mkdir -m 0644 -p /var/spool/cron/crontabs && \
    mkdir -m 0644 -p /etc/cron.d && \
    chmod +x /etc/periodic/weekly/acme-client
VOLUME ["/etc/ssl/acme/", "/var/log/cron/"]
ENTRYPOINT ["crond", "-s /var/spool/cron/crontabs", "-f", "-L /var/log/cron/cron.log"]
