variable "project_name" {
  type        = string
  description = "The name of the project."
}

variable "environment" {
  type        = string
  description = "The environment for the resources."
}

variable "aws_region" {
  type        = string
  description = "The AWS region to launch the resources."
}

variable "vpc_cidr" {
  type        = string
  description = "The CIDR block for the VPC."
}
