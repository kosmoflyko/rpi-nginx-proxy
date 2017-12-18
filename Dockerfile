FROM arm32v6/alpine:3.7

RUN apk update && \
apk upgrade && \
apk add nginx acme-client libressl && \
rm -rf /var/cache/apk/*

CMD ["/bin/bash"]