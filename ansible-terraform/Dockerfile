FROM alpine:latest AS fetch
ARG VERSION
RUN apk add --no-cache curl unzip
RUN curl -L https://releases.hashicorp.com/terraform/${VERSION}/terraform_${VERSION}_linux_amd64.zip -o /terraform.zip
RUN unzip /terraform.zip -d /

FROM alpine:latest
RUN apk add --no-cache ansible
COPY --from=fetch /terraform /usr/local/bin/terraform
WORKDIR /src
