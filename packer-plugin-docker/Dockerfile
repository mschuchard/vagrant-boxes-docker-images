FROM golang:1.23-alpine
ARG VERSION=1.10.3
COPY go.mod .
RUN go mod download && \
    apk add --no-cache --update curl unzip && \
    curl -O https://releases.hashicorp.com/packer/${VERSION}/packer_${VERSION}_linux_amd64.zip && \
    unzip packer_${VERSION}_linux_amd64.zip -d /usr/local/bin && \
    rm -f go.mod go.sum packer_${VERSION}_linux_amd64.zip && \
    apk del curl unzip
