# Packer-Plugin

A simple image based from the official Alpine Go image that additionally contains Go modules specifically for Packer plugin development and testing. It also contains the Packer CLI executable at `/usr/local/bin/packer` for executing acceptance testing.

# Versions

- Go 1.24
- Packer 1.13.1
- github.com/hashicorp/hcl/v2 v2.24.0
- github.com/hashicorp/packer-plugin-sdk v0.6.2
- github.com/nywilken/go-cty v1.13.3
