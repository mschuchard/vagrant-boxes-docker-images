ARG rubyvers
ARG rapidvaultsvers
FROM ruby:${rubyvers}-alpine
RUN gem install --no-rdoc rapid-vaults
RUN apk add --no-cache squashfs-tools gcc make bison git curl ca-certificates && curl -L http://enclose.io/rubyc/rubyc-linux-x64.gz | gunzip > /usr/bin/rubyc && chmod +rx /usr/bin/rubyc
WORKDIR /rapids-vaults
# clone version
RUN git clone https://github.com/mschuchard/rapid-vaults.git
RUN /usr/bin/rubyc rapid-vaults/bin/rapid-vaults

FROM alpine:3.7
COPY --from=builder src dest
