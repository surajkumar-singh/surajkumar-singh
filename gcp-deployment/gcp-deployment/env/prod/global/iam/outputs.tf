/******************************************
  Outputs of service_account and role binding
 *****************************************/
output "service_account_mgmt_vm" {
  value = module.service_account_mgmt_vm.email
}
