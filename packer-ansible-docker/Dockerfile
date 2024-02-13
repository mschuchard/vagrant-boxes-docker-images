# docker build . --no-cache -t matthewschuchard/packer-ansible
ARG PACKER_VERSION='1.9'
FROM hashicorp/packer:${PACKER_VERSION}
RUN apk add --no-cache --update ansible
