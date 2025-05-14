FROM golang:1.23-alpine
ARG VERSION=1.18.5
COPY go.mod .
RUN go mod download && \
    apk add --no-cache --update curl unzip && \
    curl -O https://releases.hashicorp.com/vault/${VERSION}/vault_${VERSION}_linux_amd64.zip && \
    unzip vault_${VERSION}_linux_amd64.zip -d /usr/local/bin && \
    rm -f go.mod go.sum vault_${VERSION}_linux_amd64.zip && \
    apk del curl unzip
