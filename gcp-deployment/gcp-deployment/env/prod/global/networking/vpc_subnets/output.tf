output "project_id" {
  value       = module.main-vpc.project_id
  description = "VPC project id"
}

output "network_name-main" {
  value       = module.main-vpc.network.self_link
  description = "The name of the VPC being created"
}
output "subnets_names" {
  value       = [for network in module.subnets-apps-pvt.subnets : network.name]
  description = "The names of the subnets being created"
}

