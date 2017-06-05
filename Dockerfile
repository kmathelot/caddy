FROM alpine:3.6
# Install curl
RUN apk add --no-cache curl

# get and extract caddy
RUN curl -SL -o - "https://caddyserver.com/download/linux/amd64?plugins=${plugins}" | tar -C /usr/bin -xz caddy

EXPOSE 80 443 2015

WORKDIR /var/www/html

# main app
ENTRYPOINT ["/usr/bin/caddy"]
