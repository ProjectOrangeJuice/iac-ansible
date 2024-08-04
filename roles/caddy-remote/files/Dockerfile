FROM caddy AS builder

# RUN xcaddy build \
#     --with github.com/caddyserver/nginx-adapter \
#     --with github.com/hairyhenderson/caddy-teapot-module@v0.0.3-0

FROM caddy

COPY cert.crt /usr/local/share/ca-certificates/
RUN update-ca-certificates

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
RUN mkdir /var/log/caddy