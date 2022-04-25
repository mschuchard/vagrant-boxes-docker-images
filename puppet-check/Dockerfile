FROM ruby:2.7-alpine
RUN gem install --no-document puppet-check
WORKDIR /puppet
ENTRYPOINT ["puppet-check"]
CMD ["--version"]
