/*******************************
Modules for Mgmt VM
*******************************/

module "custom_role_mgmt_vm" {
  source                    = "../../../../modules/iam/custom_role/"
  project                   = var.project_id
  role_id                   = var.service_account_mgmt_vm["role_name"]
  permissions               = var.service_account_mgmt_vm["permissions"]
}

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

/*******************************
Modules for Spinnaker Service Account
*******************************/
module "custom_role_spinnaker_apps" {
  source                    = "../../../../modules/iam/custom_role/"
  project                   = var.project_id
  role_id                   = var.service_account_spinnaker_apps["role_name"]
  permissions               = var.service_account_spinnaker_apps["permissions"]
}
module "service_account_spinnaker_apps" {
  source                = "../../../../modules/iam/service_account_new"
  project_id            = var.project_id
  service_account_name  = var.service_account_spinnaker_apps["service_account"]
}

module "member_roles_spinnaker_apps" {
  source                    = "../../../../modules/iam/member_iam"
  service_account_address   = module.service_account_spinnaker_apps.email
  project_id                = var.project_id
  project_roles             = ["projects/${var.project_id}/roles/${var.service_account_spinnaker_apps["role_name"]}"]
}
module "service_account_spinnaker_apps_key" {
  source          =  "../../../../modules/iam/service_account_key"
  service_account =  module.service_account_spinnaker_apps.email
  file_path       =  var.spinnaker_key_path
}
/*******************************
Modules for Thanos Service account
*******************************/

module "custom_role_thanos_apps" {
  source                    = "../../../../modules/iam/custom_role/"
  project                   = var.project_id
  role_id                   = var.service_account_thanos_apps["role_name"]
  permissions               = var.service_account_thanos_apps["permissions"]
}

module "service_account_thanos_apps" {
  source                = "../../../../modules/iam/service_account_new"
  project_id            = var.project_id
  service_account_name  = var.service_account_thanos_apps["service_account"]
}

module "member_roles_thanos_apps" {
  source                      = "../../../../modules/iam/member_iam"
  service_account_address    = module.service_account_thanos_apps.email
  project_id                  = var.project_id
  project_roles               = ["projects/${var.project_id}/roles/${var.service_account_thanos_apps["role_name"]}"]
}

module "service_account_thanos_apps_key" {
  source          =  "../../../../modules/iam/service_account_key"
  service_account =  module.service_account_thanos_apps.email
  file_path       =  var.thanos_key_path
}


/*******************************
Modules for Anthos LM Forwarder
*******************************/
/*
module "custom_role_anthos_lm_forwarder" {
  source                    = "../../../../modules/iam/custom_role/"
  project                   = var.project_id
  role_id                   = var.service_account_anthos_lm_forwarder["role_name"]
  permissions               = var.service_account_anthos_lm_forwarder["permissions"]
}

module "service_account_anthos_lm_forwarder" {
  source                = "../../../../modules/iam/service_account_new"
  project_id            = var.project_id
  service_account_name  = var.service_account_anthos_lm_forwarder["service_account"]
}

module "member_roles_anthos_lm_forwarder" {
  source                      = "../../../../modules/iam/member_iam"
  service_account_address    = module.service_account_anthos_lm_forwarder.email
  project_id                  = var.project_id
  project_roles               = ["projects/${var.project_id}/roles/${var.service_account_anthos_lm_forwarder["role_name"]}"]
}

module "service_account_anthos_lm_forwarder_key" {
  source          =  "../../../../modules/iam/service_account_key"
  service_account =  module.service_account_anthos_lm_forwarder.email
  file_path       =  var.lm_forwarder_file_path

}
*/
