# Puppet-Check

This image of [Puppet Check](https://github.com/mschuchard/puppet-check) is based on the `ruby:3.3-alpine` image. It will contain the latest version of Alpine Linux, and the latest version of Ruby 3.3 at the time of build. It will also contain the latest version of its dependencies at time of build. This includes Puppet, Facter, Hiera, Puppet-Lint, Rubocop, and Reek.

This image does not contain optional package dependencies such as Git, or optional Ruby dependencies such as Rake, RSpec, RSpec Puppet, and Octocatalog-Diff. If you need these for your environment, then it is recommended to create a new image from this image, and to install those additional optional dependencies with `apk` and `gem`.

This image is meant first and foremost to serve as a build agent in your CI environment. It is meant secondarily to serve as a portable testing container in your personal environment. If you want to use this in your personal testing environment, then it would be easiest to bind volume mount the target directory to the `/puppet` directory:

```
# example validate and style test current working directory
docker run --rm -v ${PWD}:/puppet matthewschuchard/puppet-check -s .
```

## Current Latest Image Specs
- Ruby 3.3.8
- Puppet 8.10.0
- Facter 4.10.0
- Puppet-Lint 4.3.0
- Rubocop 1.75.5
- Reek 6.5.0
