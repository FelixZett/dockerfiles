FROM alpine:latest AS fetch
ARG VERSION
RUN apk add --no-cache curl
RUN curl -L https://github.com/gohugoio/hugo/releases/download/v${VERSION}/hugo_${VERSION}_linux-64bit.tar.gz | tar -xz

FROM alpine:latest
RUN apk add --no-cache git npm yarn
COPY --from=fetch /hugo /usr/local/bin/hugo
WORKDIR /src
