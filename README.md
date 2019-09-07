Docker image to be able to run certbot on Raspberry Pis with cloudflare plugin integrated

To generate certs for the first time, simply run something like: 
```
docker run -it --rm --name certbot \
  -v "host/path/to/where/the/certs/will/be/stored:/etc/letsencrypt" \
  -v "/var/lib/letsencrypt:/var/lib/letsencrypt" \
  -v "host/path/to/where/the/folder/with/cloudfare.ini/is:/certbot" \
  certbot/dns-cloudflare \
  certonly \
  --dns-cloudflare \
  --noninteractive \
  --email youremail@internet.lulz \
  --agree-tos \
  --server https://acme-v02.api.letsencrypt.org/directory \
  --dns-cloudflare-credentials /certbot/cloudflare.ini \
  -d "yourdomain.tld" \
  -d "*.yourdomain.tld"
```

To renew:
```
docker run -it --rm --name certbot \
  -v "host/path/to/where/the/certs/will/be/stored:/etc/letsencrypt" \
  -v "/var/lib/letsencrypt:/var/lib/letsencrypt" \
  -v "host/path/to/where/the/folder/with/cloudfare.ini/is:/certbot" \
  ctrlaltdev/certpibot \
  renew \
  --dns-cloudflare-credentials /certbot/cloudflare.ini
```
