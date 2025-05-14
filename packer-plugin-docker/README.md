# Packer-Plugin

A simple image based from the official Alpine Go image that additionally contains Go modules specifically for Packer plugin development and testing. It also contains the Packer CLI executable at `/usr/local/bin/packer` for executing acceptance testing.

# Versions

- Go 1.23
- Packer 1.10.3
- github.com/hashicorp/hcl/v2 v2.23.0
- github.com/hashicorp/packer-plugin-sdk v0.6.1
- github.com/nywilken/go-cty v1.13.3
