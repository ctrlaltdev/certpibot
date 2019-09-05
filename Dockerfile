FROM alpine:latest

LABEL name='CertBot'
LABEL version='0.1'
LABEL description="Certbot on Alpine"
LABEL org.ctrlaltdev.vendor='ctrlaltdev'

RUN set -x && apk --no-cache add certbot

VOLUME /etc/letsencrypt /var/lib/letsencrypt

ENTRYPOINT [ "certbot" ]