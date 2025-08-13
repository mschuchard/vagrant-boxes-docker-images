FROM golang:1.24-alpine
ARG VERSION=1.11.4
COPY go.mod .
RUN go mod download && \
    go install github.com/bflad/tfproviderlint/cmd/tfproviderlint@latest && \
    apk add --no-cache --update curl unzip && \
    curl -O https://releases.hashicorp.com/terraform/${VERSION}/terraform_${VERSION}_linux_amd64.zip && \
    unzip terraform_${VERSION}_linux_amd64.zip -d /usr/local/bin && \
    rm -f go.mod go.sum terraform_${VERSION}_linux_amd64.zip && \
    apk del curl unzip
