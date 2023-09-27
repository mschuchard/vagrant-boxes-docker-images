FROM golang:1.20-alpine
WORKDIR /packer-plugin
COPY go.mod .
RUN go mod download && rm -f go.mod go.sum
# TODO packer cli
