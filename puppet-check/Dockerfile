ARG VERSION=2.2.0
FROM ruby:2.7-alpine
RUN gem install --no-document -v "$VERSION" puppet-check
WORKDIR /puppet
ENTRYPOINT ["puppet-check"]
CMD ["--version"]
