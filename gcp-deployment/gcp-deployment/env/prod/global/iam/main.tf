module "service_account_mgmt_vm" {
  source                = "../../../../modules/iam/service_account_new"
  project_id            = var.project_id
  service_account_name  = var.service_account_mgmt_vm["service_account"]
}

module "member_roles_mgmt_vm" {
  source                      = "../../../../modules/iam/member_iam"
  service_account_address    = module.service_account_mgmt_vm.email
  project_id                  = var.project_id
  project_roles               = ["projects/${var.project_id}/roles/${var.service_account_mgmt_vm["role_name"]}"]
}
