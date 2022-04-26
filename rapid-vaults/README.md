# Rapid-Vaults

This image of [Rapid Vaults](https://github.com/mschuchard/rapid-vaults) is based on the `ruby:2-7-alpine` image. It will contain the latest version of Alpine Linux, and the latest version of Ruby 2.7 at the time of build. It will also contain the latest version of its dependencies at time of build.

This image does not contain optional dependencies such as gRPC. If you need these for your environment, then it is recommended to create a new image from this image, and to install those additional optional dependencies with `apk` and `gem`.

This image is meant to serve as a portable encryption and decryption container in your environment. If you want to use this in your personal environment, then it would be easiest to bind volume mount the target directory to the `/crypt` directory:

```
# example generate crypt key and nonce in current working directory
docker run --rm -v ${PWD}:/crypt matthewschuchard/rapid-vaults --generate
```

## Current Latest Image Specs
- Alpine 3.15
- Ruby 2.7.6
