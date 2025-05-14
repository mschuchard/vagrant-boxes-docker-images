# Terraform-Plugin

A simple image based from the official Alpine Go image that additionally contains Go modules specifically for Terraform plugin development and testing. It also contains the latest patch version of the second-latest minor version of the Terraform CLI binary executable at `/usr/local/bin/terraform` for executing acceptance testing, and the latest version of TFProviderLint.

# Versions

- Go 1.23
- Terraform 1.10.5
- github.com/hashicorp/terraform-plugin-framework v1.14.1
- github.com/hashicorp/terraform-plugin-framework-validators v0.18.0
- github.com/hashicorp/terraform-plugin-go v0.26.0
- github.com/hashicorp/terraform-plugin-log v0.9.0
- github.com/hashicorp/terraform-plugin-testing v1.12.0
- github.com/bflad/tfproviderlint v0.31.0
