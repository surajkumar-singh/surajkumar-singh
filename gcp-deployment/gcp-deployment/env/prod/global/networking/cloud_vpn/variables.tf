variable "project_id" {
  description = "The ID of the project where this VPC will be created"
}

variable "region" {
  description = "Default Region"
}

variable "vpc_name" {
  description = "VPC Network to create routes"
}

variable "secret_key_phrase0" {
  description = "Key phrase for ikev2 secret key for remote 0"
}

variable "secret_key_phrase1" {
  description = "Key phrase for ikev2 secret key for remote 1"
}