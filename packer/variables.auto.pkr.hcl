variable "ami_prefix" {
  type    = string
  default = "packer-hashicorp-ami-ubuntu-22"
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
    "Name"        = "HashiCorp AMI (via Packer)"
    "Environment" = "Production"
    "Release"     = "Latest"
    "Created-by"  = "Packer"
  }
}

locals {
  timestamp = regex_replace(timestamp(), "[- TZ:]", "")
}