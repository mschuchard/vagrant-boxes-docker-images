# docker build . --no-cache -t matthewschuchard/terraform-ansible
ARG TF_VERSION='1.6'
FROM hashicorp/terraform:${TF_VERSION}
RUN apk add --no-cache --update ansible
