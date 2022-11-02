FROM ruby:2.7-alpine
ARG VERSION=1.2.0
RUN apk add --no-cache --update build-base && \
    gem install --no-document -v "$VERSION" rapid-vaults && \
    apk del build-base
WORKDIR /crypt
ENTRYPOINT ["rapid-vaults"]
CMD ["--version"]
