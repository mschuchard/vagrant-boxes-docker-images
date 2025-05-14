FROM ruby:3.3-alpine
ARG VERSION=2.3.0
RUN apk add --no-cache --update build-base && \
    gem install --no-document -v "$VERSION" puppet-check && \
    apk del build-base
WORKDIR /puppet
ENTRYPOINT ["puppet-check"]
CMD ["--version"]
