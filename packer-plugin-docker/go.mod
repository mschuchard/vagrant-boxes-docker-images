module github.com/mschuchard/packer-plugin

go 1.21

replace github.com/zclconf/go-cty => github.com/nywilken/go-cty v1.13.3

require (
	github.com/hashicorp/hcl/v2 v2.20.1
	github.com/hashicorp/packer-plugin-sdk v0.5.3
	github.com/zclconf/go-cty v1.13.3
)
