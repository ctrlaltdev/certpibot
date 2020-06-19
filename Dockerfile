FROM alpine:latest

LABEL name='CertBot'
LABEL version='0.3'
LABEL description="Certbot on Alpine"
LABEL org.ctrlaltdev.vendor='ctrlaltdev'

RUN set -x && apk --no-cache add gcc python3 python3-dev libffi-dev musl-dev openssl-dev
RUN pip3 install certbot-dns-cloudflare

VOLUME /etc/letsencrypt /var/lib/letsencrypt

ENTRYPOINT [ "certbot" ]
