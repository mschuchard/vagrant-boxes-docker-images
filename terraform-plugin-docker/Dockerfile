FROM golang:1.21-alpine
WORKDIR /terraform-plugin
COPY go.mod .
RUN go mod download && rm -f go.mod go.sum
# TODO: terraform cli? brian plugin linter?
