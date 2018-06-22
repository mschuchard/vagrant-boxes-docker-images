variable "creds_file" {
  type = "string"

  default = "/home/matt/.aws/credentials"
}

variable "pub_key" {
  type = "string"

  default = "/home/matt/.ssh/id_rsa.pub"
}
