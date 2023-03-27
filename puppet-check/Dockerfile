FROM ruby:3.0-alpine
ARG VERSION=2.2.1
RUN gem install --no-document -v "$VERSION" puppet-check
WORKDIR /puppet
ENTRYPOINT ["puppet-check"]
CMD ["--version"]
