/******************************************
  service_account variables
 *****************************************/

variable "project_id" {
  description = "The GCP project ID"
}

variable "region" {
  description = "The GCP region of the deployment."
}
variable "service_account_mgmt_vm" {
 description = "Service account for Anthos Mgmt"
}

variable "service_account_spinnaker_apps" {
 description = "Service account for Reporting tool"
}

variable "service_account_thanos_apps" {
 description = "Service account for Vault server"
}

/*variable "service_account_anthos_lm_forwarder" {
 description = "Service account for Anthos LM Forwarder"
}*/
variable "thanos_key_path" {
  description = "The file path for the Anthos Nodes JSON keypair"
}

variable "spinnaker_key_path" {
  description = "The file path for the Vault server JSON keypair"
}

/*variable "lm_forwarder_file_path" {
  description = "The file path for the Vault server JSON keypair"
}*/

