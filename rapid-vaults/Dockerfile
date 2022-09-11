ARG VERSION=1.2.0
FROM ruby:2.7-alpine
RUN apk add --no-cache --update build-base && \
    gem install --no-document -v "$VERSION" rapid-vaults && \
    apk del build-base
WORKDIR /crypt
ENTRYPOINT ["rapid-vaults"]
CMD ["--version"]
