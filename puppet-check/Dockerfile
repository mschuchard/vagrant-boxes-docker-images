FROM ruby:2.7-alpine
ARG VERSION=2.2.0
RUN gem install --no-document -v "$VERSION" puppet-check
WORKDIR /puppet
ENTRYPOINT ["puppet-check"]
CMD ["--version"]
