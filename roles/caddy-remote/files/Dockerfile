FROM caddy:builder AS builder

RUN xcaddy build \
    --with github.com/mholt/caddy-ratelimit \
    --with github.com/porech/caddy-maxmind-geolocation

FROM caddy

COPY cert.crt /usr/local/share/ca-certificates/
RUN update-ca-certificates

RUN apk update
RUN apk upgrade

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
RUN mkdir /var/log/caddy

RUN mkdir -p /usr/share/geoip
COPY GeoLite2-Country_20240730.tar.gz /usr/share/geoip/db.tar.gz
RUN tar -xvzf /usr/share/geoip/db.tar.gz -C /usr/share/geoip/