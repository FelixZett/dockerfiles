FROM alpine:latest

ARG VERSION

RUN apk add --no-cache \
    curl \
    git \
    npm

RUN mkdir -p /usr/local/src \
    && cd /usr/local/src \
    # Install hugo
    && curl -L https://github.com/gohugoio/hugo/releases/download/v${VERSION}/hugo_${VERSION}_linux-64bit.tar.gz | tar -xz \
    && mv hugo /usr/local/bin/hugo && apk del curl \
    # Add user with id 1000
    && addgroup -Sg 1000 hugo \
    && adduser -SG hugo -u 1000 -h /src hugo

WORKDIR /src