FROM golang:1.24-alpine
ARG VERSION=1.13.1
COPY go.mod .
RUN go mod download && \
    apk add --no-cache --update curl unzip && \
    curl -O https://releases.hashicorp.com/packer/${VERSION}/packer_${VERSION}_linux_amd64.zip && \
    unzip packer_${VERSION}_linux_amd64.zip -d /usr/local/bin && \
    rm -f go.mod go.sum packer_${VERSION}_linux_amd64.zip && \
    apk del curl unzip
