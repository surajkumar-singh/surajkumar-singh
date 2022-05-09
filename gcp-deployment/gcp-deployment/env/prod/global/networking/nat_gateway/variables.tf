variable "project_id" {
  description = "Project ID to reserve static IPs"
}
variable "region" {
  description = "Region to reserve static IPs"
}

variable "main_vpc_name" {
  description = "The name of the network for which NAT gateway will be created"
}