FROM golang:1.22-alpine
WORKDIR /packer-plugin
COPY go.mod .
RUN go mod download && rm -f go.mod go.sum
# TODO packer cli for more tests
