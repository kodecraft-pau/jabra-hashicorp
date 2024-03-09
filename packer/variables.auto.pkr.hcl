variable "ami_prefix" {
  type    = string
  default = "jabra/images/hashicorp/nomad-server/ubuntu-22"
}

variable "region" {
  type    = string
  default = "us-east-1"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "ami_regions" {
  type    = list(string)
  default = ["us-east-1"]
}

variable "tags" {
  type = map(string)
  default = {
    "Name"        = "Nomad Server AMI (via Packer)"
    "Environment" = "Production"
    "Release"     = "Latest"
    "Created-by"  = "Packer"
  }
}

locals {
  timestamp = regex_replace(timestamp(), "[- TZ:]", "")
}