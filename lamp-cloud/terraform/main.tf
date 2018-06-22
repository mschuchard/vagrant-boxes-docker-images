provider "aws" {
  version = "~> 1.22"

  shared_credentials_file = "${var.creds_file}"
  region                  = "us-east-1"
}

data "aws_ami" "lamp_ami" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amazon-lamp-*"]
  }
}

resource "aws_key_pair" "key" {
  key_name   = "mschuchard-key"
  public_key = "${file("${var.pub_key}")}"
}

resource "aws_instance" "example" {
  ami           = "${data.aws_ami.lamp_ami.id}"
  instance_type = "t2.micro"
  key_name      = "${aws_key_pair.key.key_name}"
}
