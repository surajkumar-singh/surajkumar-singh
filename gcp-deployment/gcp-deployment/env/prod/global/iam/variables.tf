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