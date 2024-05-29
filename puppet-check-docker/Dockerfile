FROM ruby:3.1-alpine
ARG VERSION=2.3.0
RUN gem install --no-document -v "$VERSION" puppet-check
WORKDIR /puppet
ENTRYPOINT ["puppet-check"]
CMD ["--version"]
