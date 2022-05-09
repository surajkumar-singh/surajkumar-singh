/******************************************
  Outputs of service_account and role binding
 *****************************************/
output "custom_role_mgmt_vm" {
  value = module.custom_role_mgmt_vm.role_name
}

output "custom_role_thanos_apps" {
  value = module.custom_role_thanos_apps.role_name
}

output "custom_role_spinnaker_apps" {
  value = module.custom_role_spinnaker_apps.role_name
}
output "service_account_mgmt_vm" {
  value = module.service_account_mgmt_vm.email
}
output "service_account_thanos_apps" {
  value = module.service_account_thanos_apps.email
}

output "service_account_spinnaker_apps" {
  value = module.service_account_spinnaker_apps.email
}
