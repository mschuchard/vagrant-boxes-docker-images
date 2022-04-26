FROM ruby:2.7-alpine
RUN apk add --no-cache --update build-base && \
    gem install --no-document rapid-vaults && \
    apk del build-base
WORKDIR /crypt
ENTRYPOINT ["rapid-vaults"]
CMD ["--version"]
