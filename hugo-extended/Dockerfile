FROM alpine:latest

RUN apk add --no-cache \
    libc6-compat \
    libstdc++ \
    curl \
    git \
    npm

ARG VERSION

RUN mkdir -p /usr/local/src \
    && cd /usr/local/src \
    # Install hugo
    && curl -L https://github.com/gohugoio/hugo/releases/download/v${VERSION}/hugo_extended_${VERSION}_Linux-64bit.tar.gz | tar -xz \
    && mv -v hugo /usr/local/bin/hugo && ls -la /usr/local/bin && apk del curl \
    # Add user with id 1000
    && addgroup -Sg 1000 hugo \
    && adduser -SG hugo -u 1000 -h /src hugo

WORKDIR /src